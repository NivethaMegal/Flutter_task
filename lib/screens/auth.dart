import 'package:flutter/material.dart';
import 'package:flutter_task/providers/userdetails_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_task/themes/colors.dart';
import 'package:flutter_task/widgets/auth_form.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final auth = FirebaseAuth.instance;
  void submitForm(String email, String password, String username, bool isLogin,
      BuildContext ctx) async {
    UserCredential authResult;
    var storeDetails = Provider.of<Users>(ctx, listen: false);
    try {
      if (isLogin) {
        authResult = await auth.signInWithEmailAndPassword(
            email: email, password: password);
        storeDetails.newUser = email;
        print(FirebaseFirestore.instance.collection('users'));
        Navigator.pushNamed(context, '/app');
      } else {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.COLOR_BLUE, body: AuthForm(submitForm));
  }
}
