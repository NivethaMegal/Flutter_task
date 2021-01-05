import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Users with ChangeNotifier {
  String currentUser;
  //setter method for userEmail
  set newUser(newUser) {
    currentUser = newUser;
    notifyListeners();
  }

  //getter method for userEmail
  String get currentUserDetails {
    currentUser = FirebaseAuth.instance.currentUser != null
        ? FirebaseAuth.instance.currentUser.email
        : '';
    print(currentUser);
    return currentUser;
  }
}
