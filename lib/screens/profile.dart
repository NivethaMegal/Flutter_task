import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/common/goback_button.dart';
import 'package:flutter_task/widgets/common/profile_details.dart';
import 'package:flutter_task/widgets/drawer.dart';
import 'package:flutter_task/themes/colors.dart';
import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/widgets/screen_heading.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                  icon: Image.asset(Images.BELL),
                  onPressed: () {},
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                      backgroundColor: AppColors.COLOR_WHITE,
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(100.0),
                        child: Image.asset(
                          Images.PROFILE,
                        ),
                      )),
                ),
              ],
            ),
            drawer: AppDrawer(),
            body: Column(
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
            )));
  }
}
