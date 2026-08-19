import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'cloud_sync_service.dart';

// Every user gets a silent anonymous Firebase account on first launch —
// no sign-in screen, no friction. Linking a real identity (Google/Apple/
// email) later is optional, offered at moments where it actually matters
// (e.g. protecting a purchase), not forced up front.
class AuthService {
  AuthService._();
  static final AuthService instance = AuthService._();

  final _auth = FirebaseAuth.instance;
  bool _googleInitialized = false;

  User? get currentUser => _auth.currentUser;
  String? get uid => _auth.currentUser?.uid;
  bool get isAnonymous => _auth.currentUser?.isAnonymous ?? true;
  Stream<User?> get userChanges => _auth.userChanges();

  Future<void> ensureSignedIn() async {
    if (_auth.currentUser != null) return;
    await _auth.signInAnonymously();
  }

  Future<UserCredential> linkWithGoogle() async {
    if (!_googleInitialized) {
      await GoogleSignIn.instance.initialize();
      _googleInitialized = true;
    }
    final account = await GoogleSignIn.instance.authenticate();
    final idToken = account.authentication.idToken;
    final credential = GoogleAuthProvider.credential(idToken: idToken);
    return _linkOrSignIn(credential);
  }

  Future<UserCredential> linkWithApple() async {
    final rawNonce = _generateNonce();
    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      nonce: _sha256(rawNonce),
    );
    final credential = OAuthProvider(
      'apple.com',
    ).credential(idToken: appleCredential.identityToken, rawNonce: rawNonce);
    return _linkOrSignIn(credential);
  }

  Future<UserCredential> linkWithEmailPassword(String email, String password) {
    final credential = EmailAuthProvider.credential(
      email: email,
      password: password,
    );
    return _linkOrSignIn(credential);
  }

  Future<void> sendPasswordResetEmail(String email) =>
      _auth.sendPasswordResetEmail(email: email.trim());

  Future<void> signOutAndStartFresh() async {
    await CloudSyncService.instance.upload();
    await CloudSyncService.instance.clearLocalData();
    await _auth.signOut();
    await _auth.signInAnonymously();
  }

  Future<void> deleteAccount() async {
    await FirebaseFunctions.instance
        .httpsCallable('deleteAccount')
        .call<void>();
    await CloudSyncService.instance.clearLocalData();
    await _auth.signOut();
    await _auth.signInAnonymously();
  }

  // Anonymous users upgrade in place via linkWithCredential, preserving their
  // uid (and everything keyed on it). If that identity is already tied to a
  // different account, fall back to signing into the existing account instead
  // of failing outright — the user picked a real identity, so honor it.
  Future<UserCredential> _linkOrSignIn(AuthCredential credential) async {
    final user = _auth.currentUser;
    if (user != null && user.isAnonymous) {
      try {
        final result = await user.linkWithCredential(credential);
        await CloudSyncService.instance.restoreOrUpload();
        return result;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'credential-already-in-use' ||
            e.code == 'email-already-in-use') {
          final result = await _auth.signInWithCredential(credential);
          await CloudSyncService.instance.restoreOrUpload();
          return result;
        }
        rethrow;
      }
    }
    final result = await _auth.signInWithCredential(credential);
    await CloudSyncService.instance.restoreOrUpload();
    return result;
  }

  String _generateNonce([int length = 32]) {
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(
      length,
      (_) => charset[random.nextInt(charset.length)],
    ).join();
  }

  String _sha256(String input) => sha256.convert(utf8.encode(input)).toString();
}
