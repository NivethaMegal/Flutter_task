import 'package:flutter/material.dart';
import 'package:flutter_task/common/LatestPromos.dart';
import 'package:flutter_task/common/specialPromos.dart';
import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/widgets/balance.dart';
import 'package:flutter_task/widgets/drawer.dart';
import 'package:flutter_task/widgets/findOutMore.dart';
import 'package:flutter_task/widgets/screenHeading.dart';

class App extends StatelessWidget {
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
            body: ListView(scrollDirection: Axis.vertical, children: [
              ScreenHeading(),
              Balance(),
              SpecialPromos(),
              Row(
                children: [
                  LatestPromos(),
                  LatestPromos(),
                ],
              ),
              SpecialPromos(),
              FindOutMore(),
            ])));
  }
}
