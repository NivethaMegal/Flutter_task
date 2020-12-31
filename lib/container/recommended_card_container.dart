import 'package:flutter/material.dart';
import 'package:flutter_task/core/services/recommended_services.dart';
import 'package:flutter_task/widgets/common/recommended_card.dart';

class RecommendedDataContainer extends StatefulWidget {
  @override
  _RecommendedDataContainerState createState() =>
      _RecommendedDataContainerState();
}

class _RecommendedDataContainerState extends State<RecommendedDataContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
          future: Services().getRecommendedData(context),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                  height: 70,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    for (var index = 0;
                        index < snapshot.data.recommended.length;
                        index++)
                      RecommendedCard(
                        recommendedDays:
                            snapshot.data.recommended[index].recommendedDays,
                        recommendedModel:
                            snapshot.data.recommended[index].recommendedModel,
                      )
                  ]));
            } else if (snapshot.hasError) {
              return new Text("${snapshot.error}");
            }
            return new CircularProgressIndicator();
          }),
    );
  }
}
