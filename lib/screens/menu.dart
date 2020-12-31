import 'package:flutter/material.dart';
import 'package:flutter_task/resources/strings.dart';
import 'package:flutter_task/widgets/find_out_more.dart';
import 'package:flutter_task/widgets/globe_rewards_list.dart';
import 'package:flutter_task/widgets/special_promos_list.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: [
      SpecialPromosList(name: Strings.ROAMING_PLANS),
      GlobeRewardsList(),
      FindOutMore(),
    ]);
  }
}
