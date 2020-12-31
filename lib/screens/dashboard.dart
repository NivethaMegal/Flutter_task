import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/latest_promos_list.dart';
import 'package:flutter_task/resources/strings.dart';
import 'package:flutter_task/widgets/balance.dart';
import 'package:flutter_task/widgets/find_out_more.dart';
import 'package:flutter_task/widgets/globe_rewards_list.dart';
import 'package:flutter_task/widgets/netflix.dart';
import 'package:flutter_task/widgets/screen_heading.dart';
import 'package:flutter_task/widgets/special_promos_list.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection: Axis.vertical, children: [
      ScreenHeading(),
      Balance(),
      SpecialPromosList(name: Strings.SPECIAL_PROMOS),
      LatestPromosList(),
      SpecialPromosList(name: Strings.ROAMING_PLANS),
      GlobeRewardsList(),
      FindOutMore(),
      Netflix()
    ]);
  }
}
