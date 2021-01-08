import 'package:flutter/material.dart';
import 'package:flutter_task/themes/colors.dart';

class ProfileDetails extends StatelessWidget {
  final String text;
  final String icon;
  //Constructor
  ProfileDetails({@required this.text, @required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.COLOR_BLUE,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      padding: EdgeInsets.all(10.0),
      child: Row(
        textDirection: TextDirection.ltr,
        children: [
          if (icon == 'phone')
            Icon(
              Icons.phone,
              color: AppColors.COLOR_BLACK,
              textDirection: TextDirection.ltr,
            )
          else
            Icon(
              Icons.email,
              color: AppColors.COLOR_BLACK,
              textDirection: TextDirection.ltr,
            ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            text,
            style: TextStyle(
              color: AppColors.COLOR_BLACK,
              fontSize: 20.5,
            ),
            textDirection: TextDirection.ltr,
          )
        ],
      ),
    );
  }
}
