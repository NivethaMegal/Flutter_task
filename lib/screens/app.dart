import 'package:flutter/material.dart';
import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/screens/grade.dart';
import 'package:flutter_task/screens/menu.dart';
import 'package:flutter_task/screens/plans_and_usage.dart';
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
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectPage,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(Images.DASHBOARD),
                color: AppColors.COLOR_BLUE,
              ),
              label: 'Dashboard',
              backgroundColor: AppColors.COLOR_WHITE,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(Images.DOCUMENT),
                color: AppColors.COLOR_BLUE,
              ),
              label: 'Plans & Usage',
              backgroundColor: AppColors.COLOR_WHITE,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(Images.STAR),
                color: AppColors.COLOR_BLUE,
              ),
              label: 'Promos',
              backgroundColor: AppColors.COLOR_WHITE,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(Images.MENU),
                color: AppColors.COLOR_BLUE,
              ),
              label: 'Menu',
              backgroundColor: AppColors.COLOR_WHITE,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 30,
          elevation: 5),
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
