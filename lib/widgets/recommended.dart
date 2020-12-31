import 'package:flutter/material.dart';
import 'package:flutter_task/container/recommended_card_container.dart';
import 'package:flutter_task/resources/strings.dart';
import 'package:flutter_task/themes/colors.dart';

class Recommended extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[AppColors.COLOR_DARK_GREY, AppColors.COLOR_SHADE_GREY],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Strings.RECOMMENDED,
                    style: new TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: GestureDetector(
                        child: Text(Strings.VIEW_ALL,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.none,
                                color: AppColors.COLOR_LIGHTISH_BLUE)),
                        onTap: () {}),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            RecommendedDataContainer()
            // Container(
            //   height: 70,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       RecommendedCard(
            //         recommendedDays: Strings.RECOMMENDED_DAYS,
            //         recommendedModel: Strings.RECOMMENDED_MODEL,
            //       ),
            //       RecommendedCard(
            //         recommendedDays: Strings.RECOMMENDED_DAYS,
            //         recommendedModel: Strings.RECOMMENDED_MODEL,
            //       ),
            //       RecommendedCard(
            //         recommendedDays: Strings.RECOMMENDED_DAYS,
            //         recommendedModel: Strings.RECOMMENDED_MODEL,
            //       ),
            //       RecommendedCard(
            //         recommendedDays: Strings.RECOMMENDED_DAYS,
            //         recommendedModel: Strings.RECOMMENDED_MODEL,
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
