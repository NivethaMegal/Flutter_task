import 'package:flutter/material.dart';
import 'package:flutter_task/themes/colors.dart';

class FindOutMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Expanded(
        child: RaisedButton(
          onPressed: null,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: AppColors.COLOR_BLACK)),
          color: AppColors.COLOR_WHITE,
          textColor: AppColors.COLOR_BLACK,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Find Out More'),
          ),
        ),
      ),
    ));
  }
}
