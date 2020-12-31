import 'package:flutter/material.dart';
import 'package:flutter_task/themes/colors.dart';

class LatestPromos extends StatelessWidget {
  final String bgimage;
  final String icon;
  final String data;
  final String price;
  LatestPromos(
      {@required this.bgimage,
      @required this.icon,
      @required this.data,
      @required this.price});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 140,
      height: 160,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(bgimage),
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(icon),
                SizedBox(
                  height: 15,
                ),
                Text(
                  data,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.COLOR_WHITE,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  gradient:
                      LinearGradient(colors: [Colors.black45, Colors.black12])),
              child: Container(
                padding: const EdgeInsets.only(left: 16, top: 30),
                constraints: BoxConstraints(minHeight: 70.0, minWidth: 140),
                child: Text(
                  price,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: AppColors.COLOR_WHITE,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
