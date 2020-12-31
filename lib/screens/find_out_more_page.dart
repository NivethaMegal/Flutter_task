import 'package:flutter/material.dart';
import 'package:flutter_task/resources/strings.dart';
import 'package:flutter_task/widgets/latest_promos_list.dart';
import 'package:flutter_task/widgets/balance.dart';
import 'package:flutter_task/widgets/common/goback_button.dart';
import 'package:flutter_task/widgets/drawer.dart';
import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/widgets/screen_heading.dart';
import 'package:flutter_task/widgets/special_promos_list.dart';

class FindOutMorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                  icon: Image.asset(Images.BELL),
                  onPressed: () {},
                ),
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
