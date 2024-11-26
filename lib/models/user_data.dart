class UserData {
  static final UserData _instance = UserData._internal();
  factory UserData() => _instance;
  UserData._internal();

  String _name = 'N Reshwanth';
  String _age = '18';
  String _email = 'project@example.com';
  String _phone = '+91 98348 23401';

  // Getters
  String get name => _name;
  String get age => _age;
  String get email => _email;
  String get phone => _phone;

  // Setters
  void updateName(String newName) {
    _name = newName;
  }

  void updateAge(String newAge) {
    _age = newAge;
  }

  void updateEmail(String newEmail) {
    _email = newEmail;
  }

  void updatePhone(String newPhone) {
    _phone = newPhone;
  }
} 