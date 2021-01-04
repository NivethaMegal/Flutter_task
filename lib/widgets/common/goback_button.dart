import 'package:flutter/material.dart';
import 'package:flutter_task/themes/colors.dart';

class GoBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        color: AppColors.COLOR_LIGHT_BLUE,
        onPressed: () {
          Navigator.pushNamed(context, '/app');
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('Go Back to DashBoard',
              style: TextStyle(
                fontSize: 14.0,
                color: AppColors.COLOR_BLACK,
                fontWeight: FontWeight.bold,
              )),
        ),
        shape: new RoundedRectangleBorder(
            side: BorderSide(color: AppColors.COLOR_BLACK, width: 2),
            borderRadius: new BorderRadius.circular(30.0)));
  }
}
