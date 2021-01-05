import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_task/main.dart';
import 'package:flutter_task/themes/colors.dart';
import 'package:flutter/material.dart';

class Services {
  //getting instance of the firebase
  final auth = FirebaseAuth.instance;
  void submitForm(String email, String password, String username, bool isLogin,
      BuildContext ctx) async {
    UserCredential authResult;
    try {
      if (isLogin) {
        //Login functionality
        authResult = await auth.signInWithEmailAndPassword(
            email: email, password: password);
        Navigator.push(
          ctx,
          MaterialPageRoute(builder: (context) => MyApp()),
        );
      } else {
        //Signup functionality
        authResult = await auth.createUserWithEmailAndPassword(
            email: email, password: password);
        Scaffold.of(ctx).showSnackBar(SnackBar(
          content: Text(
            'Your account has been created successfully',
            style: TextStyle(color: AppColors.COLOR_WHITE),
          ),
          action: SnackBarAction(
            label: 'Ok',
            onPressed: () {},
          ),
        ));
        FirebaseFirestore.instance
            .collection('users')
            .doc(authResult.user.uid)
            .set({'username': username, 'email': email});
      }
    } catch (err) {
      //to display error
      var message = 'An error occured, please check your credentials.';
      if (err.message != null) {
        message = err.message;
        print(message);
      }
      Scaffold.of(ctx).showSnackBar(SnackBar(
        content: Text(
          message,
          style: TextStyle(color: AppColors.COLOR_WHITE),
        ),
        action: SnackBarAction(
          label: 'Ok',
          onPressed: () {},
        ),
      ));
    }
  }
}
