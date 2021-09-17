import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('Users');

  Future updateUserProfile(
      String firstName,
      String lastName,
      String phoneNumber,
      String email,
      String officeAddress,
      String classYear,
      String memberType) async {
    return await userCollection.doc(uid).set({
      'first_name': firstName,
      'last_name': lastName,
      'phone_number': phoneNumber,
      'email': email,
      'office_address': officeAddress,
      'class_year': classYear,
      'member_type': memberType
    });
  }
}
