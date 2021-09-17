import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gp_mobile/services/constants.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection(UserProfileKeys.collectionKey);

  Future updateUserProfile(
      String firstName,
      String lastName,
      String phoneNumber,
      String email,
      String officeAddress,
      String classYear,
      String memberType) async {
    return await userCollection.doc(uid).set({
      UserProfileKeys.firstName: firstName,
      UserProfileKeys.lastName: lastName,
      UserProfileKeys.phoneNumber: phoneNumber,
      UserProfileKeys.email: email,
      UserProfileKeys.officeAddress: officeAddress,
      UserProfileKeys.classYear: classYear,
      UserProfileKeys.memberType: memberType
    });
  }

  Future<DocumentSnapshot> getUserProfile() async {
    return await userCollection.doc(uid).get();
  }
}
