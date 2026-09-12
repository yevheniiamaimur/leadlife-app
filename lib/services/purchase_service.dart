import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart' show PlatformException;
import 'package:purchases_flutter/purchases_flutter.dart';
import 'auth_service.dart';

/// Outcome of a purchase attempt, collapsing RevenueCat's error codes into
/// the four states the UI actually needs to distinguish.
enum PurchaseOutcome { success, cancelled, pending, error }

/// Keeps the RevenueCat App User ID in lock-step with the Firebase Auth
/// UID — Firebase UID == RevenueCat App User ID, always. This is identity
/// plumbing only: no purchases, offerings, or entitlement checks live here.
///
/// Relies on auth_service.dart's identity model: an anonymous Firebase user
/// is created on first launch, and linking Google/Apple/email upgrades that
/// same user in place (UID unchanged) except in one fallback case where
/// Firebase itself switches to a different, pre-existing account. This
/// service reacts to Firebase UID changes generically rather than assuming
/// which AuthService method caused them.
class PurchaseService {
  PurchaseService._();
  static final PurchaseService instance = PurchaseService._();

  // Public (publishable) RevenueCat iOS SDK key — safe to ship in a client
  // binary, but still injected at build time rather than hardcoded so it's
  // not tied to source control. See CircleCI/local setup notes.
  static const _iosApiKey = String.fromEnvironment('REVENUECAT_IOS_API_KEY');

  // RevenueCat dashboard identifiers — see the Phase 2 setup notes for how
  // these map to App Store Connect products.
  static const plusEntitlementId = 'hatchpot_plus';
  static const monthlyPackageId = 'hatchpot_monthly';

  String? _lastKnownUid;
  bool _listening = false;

  /// Latest known customer info, kept live via RevenueCat's update listener.
  /// UI reads Plus status from here — never from a locally-stored boolean —
  /// so entitlement state always reflects RevenueCat as the source of truth.
  final ValueNotifier<CustomerInfo?> customerInfo = ValueNotifier(null);

  bool get isPlusActive =>
      customerInfo.value?.entitlements.active.containsKey(plusEntitlementId) ?? false;

  /// Call once at app startup, after AuthService.ensureSignedIn() has
  /// produced a Firebase UID. Never throws — RevenueCat is optional
  /// infrastructure; the app must still launch if this fails or the API key
  /// hasn't been provided (e.g. local dev without --dart-define set).
  Future<void> configure() async {
    final uid = AuthService.instance.uid;
    if (uid == null) return;

    if (_iosApiKey.isEmpty) {
      debugPrint(
        'PurchaseService: REVENUECAT_IOS_API_KEY not provided at build time; '
        'RevenueCat stays unconfigured for this run.',
      );
      return;
    }

    try {
      if (await Purchases.isConfigured) {
        // Dart-side hot restart: the native SDK is still configured from
        // before, so don't reconfigure — just make sure our own tracking of
        // "last known uid" and the change listener are set up fresh.
        _lastKnownUid = uid;
        _listenForUidChanges();
        return;
      }
      await Purchases.configure(PurchasesConfiguration(_iosApiKey)..appUserID = uid);
      _lastKnownUid = uid;
      _listenForUidChanges();
    } catch (error, stack) {
      debugPrint('PurchaseService: RevenueCat configuration failed: $error\n$stack');
    }
  }

  /// Fires Purchases.logIn only on a genuine Firebase UID change — Firebase's
  /// userChanges() stream also emits on token refresh and profile edits,
  /// which must not trigger a redundant RevenueCat identity call.
  ///
  /// Purchases.logOut() is intentionally never called here: every UID
  /// transition in this app's model (anonymous → linked in place, fallback
  /// sign-in to a different existing account, sign-out-and-restart,
  /// account deletion) lands on a specific new Firebase UID, and
  /// Purchases.logIn(newUid) alone is the correct, complete operation for
  /// switching to it. This app never wants a RevenueCat-generated anonymous
  /// customer.
  void _listenForUidChanges() {
    if (_listening) return;
    _listening = true;
    AuthService.instance.userChanges.listen((user) async {
      final uid = user?.uid;
      if (uid == null || uid == _lastKnownUid) return;
      _lastKnownUid = uid;
      try {
        await Purchases.logIn(uid);
      } catch (error, stack) {
        debugPrint('PurchaseService: Purchases.logIn failed: $error\n$stack');
      }
    });
    // Pushes updated CustomerInfo (purchases, renewals, expirations) into
    // `customerInfo` as they happen, so any screen listening to it — the
    // paywall, the profile screen — reflects entitlement changes live.
    Purchases.addCustomerInfoUpdateListener((info) => customerInfo.value = info);
    // Also fetch once eagerly rather than waiting on the listener's first
    // callback, so `customerInfo` has a value as soon as possible after
    // configure() rather than depending on internal SDK timing.
    _fetchInitialCustomerInfo();
  }

  Future<void> _fetchInitialCustomerInfo() async {
    try {
      customerInfo.value = await Purchases.getCustomerInfo();
    } catch (error, stack) {
      debugPrint('PurchaseService: initial getCustomerInfo failed: $error\n$stack');
    }
  }

  /// Fetches the current offering and resolves the Hatchpot Plus monthly
  /// package by its RevenueCat package identifier — not by StoreKit product
  /// ID and not via the `.monthly` convenience getter, since that only
  /// resolves for RevenueCat's predefined package-type slots, and this
  /// package uses a custom identifier. Returns null (never throws) if the
  /// offering, or the package within it, isn't available — callers should
  /// treat that as "purchasing is temporarily unavailable," not a crash.
  Future<Package?> getMonthlyPlusPackage() async {
    try {
      final offerings = await Purchases.getOfferings();
      final offering = offerings.current;
      if (offering == null) return null;
      for (final package in offering.availablePackages) {
        if (package.identifier == monthlyPackageId) return package;
      }
      return null;
    } catch (error, stack) {
      debugPrint('PurchaseService: getOfferings failed: $error\n$stack');
      return null;
    }
  }

  /// Purchases [package] (expected to be the Hatchpot Plus monthly package).
  /// Never throws — every outcome, including user cancellation and pending
  /// payment states, comes back as a [PurchaseOutcome] for the caller to
  /// branch on.
  Future<PurchaseOutcome> purchasePlus(Package package) async {
    try {
      final result = await Purchases.purchase(PurchaseParams.package(package));
      customerInfo.value = result.customerInfo;
      final active = result.customerInfo.entitlements.active.containsKey(plusEntitlementId);
      return active ? PurchaseOutcome.success : PurchaseOutcome.error;
    } on PlatformException catch (error) {
      switch (PurchasesErrorHelper.getErrorCode(error)) {
        case PurchasesErrorCode.purchaseCancelledError:
          return PurchaseOutcome.cancelled;
        case PurchasesErrorCode.paymentPendingError:
          return PurchaseOutcome.pending;
        default:
          debugPrint('PurchaseService: purchase failed: ${error.code} ${error.message}');
          return PurchaseOutcome.error;
      }
    } catch (error, stack) {
      debugPrint('PurchaseService: purchase failed: $error\n$stack');
      return PurchaseOutcome.error;
    }
  }

  /// Restores previous purchases for the current RevenueCat identity (i.e.
  /// the current Firebase UID). Never throws.
  Future<PurchaseOutcome> restorePurchases() async {
    try {
      final info = await Purchases.restorePurchases();
      customerInfo.value = info;
      return PurchaseOutcome.success;
    } catch (error, stack) {
      debugPrint('PurchaseService: restorePurchases failed: $error\n$stack');
      return PurchaseOutcome.error;
    }
  }
}
