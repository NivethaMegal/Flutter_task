import 'package:flutter/material.dart';
import 'package:flutter_task/themes/colors.dart';

class ChannelCard extends StatelessWidget {
  final Color bgcolor;
  final String image;
  final String price;
  //Constructor
  ChannelCard({
    @required this.bgcolor,
    @required this.image,
    @required this.price,
  });
  @override
  Widget build(BuildContext context) {
    //Phone Mode
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      width: isLandscape
          ? MediaQuery.of(context).size.width * 0.3
          : MediaQuery.of(context).size.width * 0.34,
      child: Card(
        color: bgcolor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(image),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Subscribe for',
                  style: TextStyle(color: AppColors.COLOR_WHITE, fontSize: 14),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  price,
                  style: TextStyle(
                      color: AppColors.COLOR_WHITE,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
