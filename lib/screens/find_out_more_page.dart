import 'package:flutter/material.dart';
import 'package:flutter_task/resources/strings.dart';
import 'package:flutter_task/widgets/latest_promos_list.dart';
import 'package:flutter_task/widgets/balance.dart';
import 'package:flutter_task/widgets/common/goback_button.dart';
import 'package:flutter_task/widgets/drawer.dart';
import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/widgets/screen_heading.dart';
import 'package:flutter_task/widgets/special_promos_list.dart';
import 'package:flutter_task/providers/notificationcounter_provider.dart';
import 'package:flutter_task/themes/colors.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart';

class FindOutMorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Provider instance
    var count = Provider.of<Counter>(context, listen: false);
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              actions: [
                new Stack(children: [
                  IconButton(
                    icon: Image.asset(Images.BELL),
                    onPressed: () {},
                  ),
                  count.getCount != 0
                      ? Positioned(
                          left: 22,
                          child: Badge(
                            toAnimate: false,
                            shape: BadgeShape.circle,
                            badgeColor: Colors.red,
                            borderRadius: BorderRadius.circular(8),
                            badgeContent: Text(count.getCount.toString(),
                                style: TextStyle(color: AppColors.COLOR_WHITE)),
                          ),
                        )
                      : SizedBox(),
                ]),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(100.0),
                        child: Image.asset(
                          Images.PROFILE,
                        ),
                      )),
                ),
              ],
            ),
            drawer: AppDrawer(),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  ScreenHeading(),
                  SpecialPromosList(name: Strings.SPECIAL_PROMOS),
                  LatestPromosList(),
                  SpecialPromosList(name: Strings.ROAMING_PLANS),
                  Balance(),
                  GoBack()
                ],
              ),
            )));
  }
}
