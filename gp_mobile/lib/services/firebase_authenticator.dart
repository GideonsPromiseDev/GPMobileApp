import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gp_mobile/models/simple_user.dart';
import 'package:gp_mobile/services/constants.dart';
import 'package:gp_mobile/services/database.dart';

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

      String userID = user!.uid;
      DocumentSnapshot userProfile =
          await DatabaseService(uid: userID).getUserProfile();

      if (!userProfile.exists) {
        throw FirebaseAuthException(code: 'user-not-found');
      }

      user = SimpleUser(
          uid: user.uid,
          firstName: userProfile.get(UserProfileKeys.firstName),
          lastName: userProfile.get(UserProfileKeys.lastName),
          email: userProfile.get(UserProfileKeys.email),
          phoneNumber: userProfile.get(UserProfileKeys.phoneNumber),
          officeAddress: userProfile.get(UserProfileKeys.officeAddress),
          classYear: userProfile.get(UserProfileKeys.classYear),
          memberType: userProfile.get(UserProfileKeys.memberType));
    } on FirebaseAuthException {
      rethrow;
    }
    return user;
  }

  Future<SimpleUser?> registerUser(
      {required String email,
      required String password,
      required String firstName,
      required String lastName,
      required String phoneNumber,
      required String officeAddress,
      required String classYear,
      required String memberType}) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      String? userID = userCredential.user?.uid;
      if (userID == null) {
        print("UserID is null");
        return null;
      }

      await DatabaseService(uid: userID).updateUserProfile(firstName, lastName,
          phoneNumber, email, officeAddress, classYear, memberType);

      return _simpleUserFromFirebaseUser(userCredential.user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
