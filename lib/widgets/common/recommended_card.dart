import 'package:flutter/material.dart';
import 'package:flutter_task/themes/colors.dart';

class RecommendedCard extends StatelessWidget {
  final String recommendedModel;
  final String recommendedDays;

  //Constructor
  RecommendedCard({
    @required this.recommendedModel,
    @required this.recommendedDays,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Card(
        color: AppColors.COLOR_BLUE,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 16.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  recommendedModel,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: AppColors.COLOR_WHITE,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  recommendedDays,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: AppColors.COLOR_WHITE,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
