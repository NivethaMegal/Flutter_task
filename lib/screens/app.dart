import 'package:flutter/material.dart';
import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/screens/grade.dart';
import 'package:flutter_task/screens/menu.dart';
import 'package:flutter_task/screens/plans_and_usage.dart';
import 'package:flutter_task/widgets/bottom_navigationbar.dart';
import 'package:flutter_task/widgets/drawer.dart';
import 'package:flutter_task/screens/dashboard.dart';
import 'package:flutter_task/themes/colors.dart';

class App extends StatefulWidget {
  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  final List<Widget> _pages = [DashBoard(), PlansandUsage(), Grade(), Menu()];
  int _selectedIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigation(
        selectPage: (int index) {
          _selectPage(index);
        },
        labelIndex: _selectedIndex,
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: AppColors.COLOR_BLACK,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: AppColors.COLOR_WHITE,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ));
  }
}
