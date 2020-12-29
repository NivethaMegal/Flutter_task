import 'package:flutter/material.dart';
import 'package:flutter_task/resources/strings.dart';

class ScreenHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
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
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
              Icon(Icons.add)
            ],
          )
        ],
      ),
    );
  }
}
