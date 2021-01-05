import 'package:flutter/material.dart';
import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/themes/colors.dart';

//Callback definition
typedef void IntCallback(int _selectedIndex);

class BottomNavigation extends StatelessWidget {
  //Callback function
  final IntCallback selectPage;
  int labelIndex;
  //Constructor
  BottomNavigation({@required this.selectPage, @required this.labelIndex});
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: selectPage,
        currentIndex: labelIndex,
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
        selectedItemColor: AppColors.COLOR_BLUE,
        iconSize: 30,
        elevation: 5);
  }
}
