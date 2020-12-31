import 'dart:convert';

import 'dart:async' show Future;
import 'package:flutter/cupertino.dart';
import 'package:flutter_task/core/models/latestpromos_data.dart';

class Services {
  Future<LatestPromoCard> getLatestPromoData(BuildContext context) async {
    String jsonString = await DefaultAssetBundle.of(context)
        .loadString('mock/latest_promos.json');
    Map LatestPromoData = jsonDecode(jsonString);
    final RecommendedList = LatestPromoCard.fromJson(LatestPromoData);
    return RecommendedList;
  }
}
