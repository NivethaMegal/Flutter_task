import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/common/goback_button.dart';
import 'package:flutter_task/widgets/common/profile_details.dart';
import 'package:flutter_task/themes/colors.dart';
import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/widgets/screen_heading.dart';

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ScreenHeading(),
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Images.PROFILE1),
                  fit: BoxFit.fill,
                  alignment: Alignment.topCenter,
                ),
                shape: BoxShape.circle),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text(
                'Nivetha R',
                style: TextStyle(
                    color: AppColors.COLOR_GRAPE_PURPLE,
                    fontSize: 20.5,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Software Engineer',
                style: TextStyle(
                    color: AppColors.COLOR_GRAPE_PURPLE,
                    fontSize: 20.5,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          ProfileDetails(
            text: '90471 46600',
            icon: 'phone',
          ),
          ProfileDetails(text: 'nivetha@moonraft.com', icon: 'mail'),
          GoBack(),
        ],
      ),
    );
  }
}
