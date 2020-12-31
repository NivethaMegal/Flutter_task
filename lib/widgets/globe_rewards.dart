import 'package:flutter/material.dart';

import 'package:flutter_task/resources/strings.dart';
import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/themes/colors.dart';

class GlobeRewards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
                colors: [AppColors.COLOR_ORANGE, AppColors.COLOR_PALE_ORANGE])),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Strings.YOUR_REWARDS,
                    style: TextStyle(
                        color: AppColors.COLOR_WHITE,
                        fontSize: 14.0,
                        letterSpacing: 0.16),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    Strings.POINTS,
                    style: TextStyle(
                      color: AppColors.COLOR_WHITE,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Image.asset(Images.GLOBE_REWARDS)
            ],
          ),
        ),
      ),
    );
  }
}
