import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final String balance;
  final String image;
  final String number;
  final String subdata;

  BalanceCard(
      {@required this.balance,
      @required this.image,
      @required this.number,
      @required this.subdata});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 136,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(image),
                SizedBox(
                  height: 28,
                ),
                Text(
                  balance,
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 4,
                ),
                Text(number, style: Theme.of(context).textTheme.headline4),
                SizedBox(
                  height: 12,
                ),
                Text(subdata, style: Theme.of(context).textTheme.headline6),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
