import 'package:flutter/material.dart';
import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/resources/strings.dart';
import 'package:flutter_task/themes/colors.dart';

class SpecialPromos extends StatelessWidget {
  //Shader for Gradient colors in headings
  final Shader linearGradient = LinearGradient(
    colors: <Color>[AppColors.COLOR_SAPPHIRE, AppColors.COLOR_LAVENDER_PINK],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

  @override
  Widget build(BuildContext context) {
    //Phone Mode
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
            height: isLandscape
                ? MediaQuery.of(context).size.height * 0.5
                : MediaQuery.of(context).size.height * 0.23,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Images.PROMOS_IMAGE),
                fit: BoxFit.fill,
                alignment: Alignment.topCenter,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Strings.GOSAKTO,
                        style: TextStyle(
                            color: AppColors.COLOR_WHITE,
                            fontSize: 14.0,
                            letterSpacing: 0.16),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        Strings.CREATE_WHAT_MATTERS,
                        style: TextStyle(
                          color: AppColors.COLOR_WHITE,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        Strings.PROMO_ALL,
                        style: TextStyle(
                          color: AppColors.COLOR_WHITE,
                          fontSize: 12.0,
                          letterSpacing: -0.34,
                        ),
                      ),
                      SizedBox(
                        height: isLandscape ? 60 : 10,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      gradient: LinearGradient(
                          colors: [Colors.black45, Colors.black12])),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    constraints: BoxConstraints(minHeight: 34.0),
                    child: Row(children: [
                      Text(
                        Strings.OWN_PROMO,
                        style: TextStyle(
                          color: AppColors.COLOR_WHITE,
                          fontSize: 14.0,
                          letterSpacing: -0.1,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: AppColors.COLOR_WHITE,
                      )
                    ]),
                  ),
                ),
              ],
            )));
  }
}
