import 'package:flutter/material.dart';
import 'package:flutter_task/themes/colors.dart';
import 'package:flutter_task/resources/strings.dart';
import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/widgets/channel_list.dart';
import 'package:flutter_task/widgets/netflix_list.dart';

class Netflix extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[AppColors.COLOR_VIOLET, AppColors.COLOR_PALE_VIOLET],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.COLOR_BLACK,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 40),
              child: Text(Strings.MY_SUBSCRIPTION,
                  style: TextStyle(
                    color: AppColors.COLOR_WHITE,
                    fontSize: 14,
                  )),
            ),
            Text(Strings.NETFLIX_DATA,
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()..shader = linearGradient)),
            NetflixList(
              name: Strings.POPULAR_ON,
              logo: Images.NETFLIX,
            ),
            NetflixList(
              name: Strings.LATEST_ON,
              logo: Images.PRIME,
            ),
            ChannelList()
          ],
        ),
      ),
    );
  }
}
