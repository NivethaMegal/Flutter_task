import 'package:flutter/material.dart';
import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/themes/colors.dart';

class LatestPromos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 140,
        height: 160,
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage(Images.LATEST_PROMOS))),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('images/bitmap-4.png'),
                      SizedBox(
                        height: 28,
                      ),
                      Text(
                        'Spotify Premium',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: AppColors.COLOR_WHITE,
                        ),
                      ),
                      // SizedBox(
                      //   height: 4,
                      // ),
                      // Text(number, style: Theme.of(context).textTheme.headline4),
                      // SizedBox(
                      //   height: 12,
                      // ),
                      // Text(subdata, style: Theme.of(context).textTheme.headline6),
                    ],
                  ),
                ),
              ),
            )));
  }
}
