import 'package:flutter/material.dart';
import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/screens/grade.dart';
import 'package:flutter_task/screens/menu.dart';
import 'package:flutter_task/screens/plans_and_usage.dart';
import 'package:flutter_task/widgets/bottom_navigationbar.dart';
import 'package:flutter_task/widgets/drawer.dart';
import 'package:flutter_task/screens/dashboard.dart';
import 'package:flutter_task/themes/colors.dart';
import 'dart:collection';
import 'package:flutter_task/providers/notificationcounter_provider.dart';
import 'package:provider/provider.dart';
import 'package:badges/badges.dart';

class App extends StatefulWidget {
  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  //Navigator list for managing back press
  ListQueue<int> _navigationQueue = ListQueue();
  //List of pages in bottom navigation bar
  final List<Widget> _pages = [DashBoard(), PlansandUsage(), Grade(), Menu()];
  int _selectedIndex = 0;
  //Function for setting the corresponding index
  void _selectPage(int index) {
    _navigationQueue.addLast(_selectedIndex);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Provider Instance
    var count = Provider.of<Counter>(context, listen: false);
    return new WillPopScope(
        onWillPop: () async {
          if (_navigationQueue.isEmpty) {
            showDialog<bool>(
              context: context,
              builder: (c) => AlertDialog(
                title: Text('Warning'),
                content: Text('Do you really want to exit'),
                actions: [
                  FlatButton(
                    child: Text('Yes'),
                    onPressed: () => Navigator.pop(c, true),
                  ),
                  FlatButton(
                    child: Text('No'),
                    onPressed: () => Navigator.pop(c, false),
                  ),
                ],
              ),
            );
          }
          if (_navigationQueue.isEmpty) return true;

          setState(() {
            _selectedIndex = _navigationQueue.last;
            _navigationQueue.removeLast();
          });
          return false;
        },
        child: SafeArea(
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
          body: _pages[_selectedIndex],
          bottomNavigationBar: BottomNavigation(
            selectPage: (int index) {
              _selectPage(index);
            },
            labelIndex: _selectedIndex,
          ),
          floatingActionButton: new FloatingActionButton(
            backgroundColor: AppColors.COLOR_BLACK,
            onPressed: () {
              setState(() {
                count.increment = 1;
              });
            },
            child: Icon(
              Icons.add,
              color: AppColors.COLOR_WHITE,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        )));
  }
}
