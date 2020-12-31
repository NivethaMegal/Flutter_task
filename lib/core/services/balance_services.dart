import 'dart:convert';

import 'dart:async' show Future;
import 'package:flutter/material.dart';
import 'package:flutter_task/core/models/balance_data.dart';

class Services {
  Future<BalanceCard> getBalanceData(BuildContext context) async {
    String jsonString =
        await DefaultAssetBundle.of(context).loadString('mock/balance.json');
    Map BalanceData = jsonDecode(jsonString);
    final BalanceList = BalanceCard.fromJson(BalanceData);
    return BalanceList;
  }
}
