import 'package:flutter/material.dart';
import 'package:flutter_task/themes/colors.dart';
import 'package:flutter_task/widgets/auth_form.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.COLOR_BLUE, body: AuthForm());
  }
}
