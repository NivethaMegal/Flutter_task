import 'package:flutter/material.dart';
import 'package:flutter_task/themes/colors.dart';
import 'package:flutter_task/resources/strings.dart';
import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/widgets/common/netflix_card.dart';

class NetflixList extends StatelessWidget {
  final String name;
  final String logo;
  NetflixList({@required this.name, @required this.logo});
  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(name,
                        style: TextStyle(
                          fontSize: 14.0,
                          color: AppColors.COLOR_WHITE,
                          fontWeight: FontWeight.bold,
                        )),
                    Image.asset(logo)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: GestureDetector(
                      child: Text(Strings.VIEW_ALL,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                              color: AppColors.COLOR_LIGHTISH_BLUE)),
                      onTap: () {}),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: isLandscape
                  ? MediaQuery.of(context).size.height * 0.4
                  : MediaQuery.of(context).size.height * 0.3,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  NetflixCard(bgimage: Images.NETFLIX_IMAGE),
                  NetflixCard(bgimage: Images.NETFLIX_IMAGE1),
                  NetflixCard(bgimage: Images.NETFLIX_IMAGE),
                  NetflixCard(bgimage: Images.NETFLIX_IMAGE1),
                  NetflixCard(bgimage: Images.NETFLIX_IMAGE),
                  NetflixCard(bgimage: Images.NETFLIX_IMAGE1),
                  NetflixCard(bgimage: Images.NETFLIX_IMAGE)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
