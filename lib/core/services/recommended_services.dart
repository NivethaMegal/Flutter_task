import 'dart:convert';

import 'dart:async' show Future;
import 'package:flutter/cupertino.dart';
import 'package:flutter_task/core/models/recommended_data.dart';

class Services {
  Future<RecommendedDataCard> getRecommendedData(BuildContext context) async {
    String jsonString = await DefaultAssetBundle.of(context)
        .loadString('mock/recommended.json');
    Map RecommendedData = jsonDecode(jsonString);
    final RecommendedList = RecommendedDataCard.fromJson(RecommendedData);
    return RecommendedList;
  }
}
