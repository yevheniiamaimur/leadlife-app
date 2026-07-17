import 'package:firebase_auth/firebase_auth.dart';

// Every user gets a silent anonymous Firebase account on first launch —
// no sign-in screen, no friction. Linking a real identity (Google/Apple/
// email) later is optional, offered at moments where it actually matters
// (e.g. protecting a purchase), not forced up front.
class AuthService {
  AuthService._();
  static final AuthService instance = AuthService._();

  final _auth = FirebaseAuth.instance;

  User? get currentUser => _auth.currentUser;
  String? get uid => _auth.currentUser?.uid;
  bool get isAnonymous => _auth.currentUser?.isAnonymous ?? true;
  Stream<User?> get userChanges => _auth.userChanges();

  Future<void> ensureSignedIn() async {
    if (_auth.currentUser != null) return;
    await _auth.signInAnonymously();
  }
}
