import 'package:flutter/material.dart';
import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/themes/colors.dart';

class SpecialPromos extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[AppColors.COLOR_SAPPHIRE, AppColors.COLOR_LAVENDER_PINK],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: 156.0,
      margin: const EdgeInsets.only(
          left: 20.0, top: 32.0, right: 20.0, bottom: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Special Promos',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
                letterSpacing: -0.5,
                foreground: Paint()..shader = linearGradient),
          ),
          Container(
            margin: const EdgeInsets.only(top: 12.0),
            padding: const EdgeInsets.only(
                left: 20.0, top: 20, right: 20.0, bottom: 17.0),
            decoration: BoxDecoration(
                image: new DecorationImage(
                    image: new AssetImage(Images.PROMOS_IMAGE))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'GoSakto',
                  style: TextStyle(
                      color: Colors.white, fontSize: 14.0, letterSpacing: 0.16),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Create What Matters',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 13.0),
                  child: Text(
                    'Promo that’s all you! ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                      letterSpacing: -0.34,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
