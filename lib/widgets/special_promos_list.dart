import 'package:flutter/material.dart';
import 'package:flutter_task/themes/colors.dart';
import 'package:flutter_task/resources/strings.dart';
import 'package:flutter_task/widgets/common/special_promo.dart';

class SpecialPromosList extends StatelessWidget {
  final String name;
  SpecialPromosList({@required this.name});
  //Shader for gradient color in heading
  final Shader linearGradient = LinearGradient(
    colors: <Color>[AppColors.COLOR_SAPPHIRE, AppColors.COLOR_LAVENDER_PINK],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(name,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient)),
              ),
              if (name == 'Roaming Plans')
                Padding(
                  padding: const EdgeInsets.only(top: 20, right: 20.0),
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
          SpecialPromos(),
        ],
      ),
    );
  }
}
