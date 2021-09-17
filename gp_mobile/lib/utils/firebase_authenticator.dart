import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gp_mobile/models/simple_user.dart';

class FirebaseAuthenticator {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  SimpleUser? _simpleUserFromFirebaseUser(User? user) {
    return user != null ? SimpleUser(uid: user.uid) : null;
  }

  Stream<SimpleUser?> get simpleUser {
    return _auth
        .authStateChanges()
        .map((User? u) => _simpleUserFromFirebaseUser(u));
  }

  Future<SimpleUser?> signInWithEmailAndPassword(
      {required BuildContext context,
      required email,
      required password}) async {
    SimpleUser? user;

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      user = _simpleUserFromFirebaseUser(userCredential.user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided.');
      }
    }
    return user;
  }

  Future<User?> registerUsingEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = userCredential.user;
      await user!.updateDisplayName(name);
      await user.reload();
      user = _auth.currentUser;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    return user;
  }

  static Future signOut() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
