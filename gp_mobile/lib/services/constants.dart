class UserProfileKeys {
  // Key that refers to the page/table where all user profiles are stored
  // within Firebase Firestore
  static const collectionKey = 'Users';

  // Keys within the Users collection
  static const firstName = 'first_name';
  static const lastName = 'last_name';
  static const phoneNumber = 'phone_number';
  static const email = 'email';
  static const officeAddress = 'office_address';
  static const classYear = 'class_year';
  static const memberType = 'member_type';
}
