class SimpleUser {
  final String uid;

  String? email;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? officeAddress;
  String? classYear;
  String? memberType;

  SimpleUser(
      {required this.uid,
      this.email,
      this.firstName,
      this.lastName,
      this.classYear,
      this.phoneNumber,
      this.memberType,
      this.officeAddress});
}
