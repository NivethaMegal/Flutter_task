import 'package:flutter/material.dart';
import 'package:flutter_task/resources/strings.dart';
import 'package:flutter_task/themes/colors.dart';

class ScreenHeading extends StatefulWidget {
  @override
  ScreenHeadingState createState() {
    return new ScreenHeadingState();
  }
}

class ScreenHeadingState extends State<ScreenHeading> {
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                Strings.SCREEN_NAME,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
          SizedBox(
            height: 6.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    Strings.PREPAID_NO,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  IconButton(
                    icon: pressed
                        ? Icon(Icons.keyboard_arrow_up)
                        : Icon(Icons.keyboard_arrow_down),
                    color: AppColors.COLOR_BLACK,
                    onPressed: () {
                      setState(() {
                        pressed = !pressed;
                      });
                    },
                  ),
                ],
              ),
              Icon(Icons.add)
            ],
          ),
          pressed
              ? Row(
                  children: [
                    Text(
                      " You are here... ",
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ],
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
