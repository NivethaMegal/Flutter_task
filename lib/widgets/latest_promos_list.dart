import 'package:flutter/material.dart';
import 'package:flutter_task/container/latestpromos_container.dart';
import 'package:flutter_task/resources/strings.dart';
import 'package:flutter_task/themes/colors.dart';

class LatestPromosList extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[AppColors.COLOR_SAPPHIRE, AppColors.COLOR_LAVENDER_PINK],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(Strings.LATEST_PROMOS,
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()..shader = linearGradient)),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: LatestPromoDataContainer()
              //  Container(
              //   height: 180,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: [
              //       LatestPromos(
              //           bgimage: Images.LATEST_PROMOS,
              //           icon: Images.WIFI,
              //           data: Strings.SPOTIFY_PREMIUM,
              //           price: 'P 129.00'),
              //       LatestPromos(
              //           bgimage: Images.LATEST_PROMOS1,
              //           icon: Images.FACEBOOK,
              //           data: Strings.FACEBOOK,
              //           price: 'P 150.00'),
              //       LatestPromos(
              //           bgimage: Images.LATEST_PROMOS,
              //           icon: Images.WIFI,
              //           data: Strings.SPOTIFY_PREMIUM,
              //           price: 'P 129.00'),
              //       LatestPromos(
              //           bgimage: Images.LATEST_PROMOS1,
              //           icon: Images.FACEBOOK,
              //           data: Strings.FACEBOOK,
              //           price: 'P 150.00')
              //     ],
              //   ),
              // ),
              ),
        ],
      ),
    );
  }
}
