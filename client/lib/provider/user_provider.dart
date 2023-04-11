import 'package:flutter/widgets.dart';
import 'package:tutor_me/models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
      id: '',
      username: '',
      level: '',
      email: '',
      phonenumber: '',
      password: '',
      token: '',
      type: '');

  User get user => _user;

  void setUser(String user) {
    _user = User.fromJson(user);
    notifyListeners();
  }
}
