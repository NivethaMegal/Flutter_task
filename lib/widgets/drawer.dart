import 'package:flutter/material.dart';

import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/screens/app.dart';
import 'package:flutter_task/screens/profile.dart';
import 'package:flutter_task/themes/colors.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            color: AppColors.COLOR_BLUE,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                IconButton(
                  icon: Image.asset(Images.BELL),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          ListTile(
            title: Text("Profile"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
          ),
          ListTile(
            title: Text("DashBoard"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => App()),
              );
            },
          ),
        ],
      ),
    );
  }
}
