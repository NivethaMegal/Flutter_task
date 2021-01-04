import 'package:flutter/material.dart';

class Users with ChangeNotifier {
  String currentUser;
  set newUser(newUser) {
    currentUser = newUser;
    notifyListeners();
  }

  String get currentUserDetails => currentUser;
}
