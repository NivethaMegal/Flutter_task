import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/main.dart';
import 'package:flutter_task/providers/userdetails_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/screens/app.dart';
import 'package:flutter_task/screens/profile.dart';
import 'package:flutter_task/themes/colors.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    var storeDetails = Provider.of<Users>(context);
    var email = storeDetails.currentUserDetails;
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            color: AppColors.COLOR_BLUE,
            height: isLandscape
                ? MediaQuery.of(context).size.height * 0.3
                : MediaQuery.of(context).size.height * 0.2,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                  Text(email,
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith()
                          .apply(color: AppColors.COLOR_WHITE)),
                ],
              ),
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
          ListTile(
            title: Text("Logout"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              FirebaseAuth.instance.signOut();
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyApp()));
            },
          ),
        ],
      ),
    );
  }
}
