import 'package:flutter/material.dart';
import 'package:flutter_task/themes/colors.dart';
import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/widgets/common/channel_card.dart';

class ChannelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Phone Mode
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
                    Text('You might also like',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: AppColors.COLOR_WHITE,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
              height: isLandscape
                  ? MediaQuery.of(context).size.height * 0.5
                  : MediaQuery.of(context).size.height * 0.25,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  ChannelCard(
                    image: Images.CHANNEL,
                    bgcolor: AppColors.COLOR_GRAPE_PURPLE,
                    price: 'P 129.00',
                  ),
                  ChannelCard(
                    image: Images.CHANNEL1,
                    bgcolor: AppColors.COLOR_BROWN,
                    price: 'P 129.00',
                  ),
                  ChannelCard(
                    image: Images.CHANNEL,
                    bgcolor: AppColors.COLOR_GRAPE_PURPLE,
                    price: 'P 129.00',
                  ),
                  ChannelCard(
                    image: Images.CHANNEL1,
                    bgcolor: AppColors.COLOR_BROWN,
                    price: 'P 129.00',
                  ),
                  ChannelCard(
                    image: Images.CHANNEL1,
                    bgcolor: AppColors.COLOR_BROWN,
                    price: 'P 129.00',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
