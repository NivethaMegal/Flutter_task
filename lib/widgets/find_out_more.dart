import 'package:flutter/material.dart';
import 'package:flutter_task/screens/find_out_more_page.dart';
import 'package:flutter_task/themes/colors.dart';
import 'package:flutter_task/resources/strings.dart';

class FindOutMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: new FlatButton(
        shape: new RoundedRectangleBorder(
            side: BorderSide(color: AppColors.COLOR_BLACK, width: 2),
            borderRadius: new BorderRadius.circular(10.0)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FindOutMorePage()),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(Strings.FIND_OUT_MORE,
              style: TextStyle(
                fontSize: 14.0,
                color: AppColors.COLOR_BLACK,
                fontWeight: FontWeight.bold,
              )),
        ),
      ),
    ));
  }
}
