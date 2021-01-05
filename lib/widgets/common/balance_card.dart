import 'package:flutter/material.dart';
import 'package:flutter_task/themes/colors.dart';

class BalanceCard extends StatefulWidget {
  final int index;
  final String balance;
  final String image;
  final String number;
  final String subdata;

  //Constructor
  BalanceCard(
      {@required this.balance,
      @required this.index,
      @required this.image,
      @required this.number,
      @required this.subdata});
  @override
  BalanceCardState createState() => BalanceCardState();
}

class BalanceCardState extends State<BalanceCard> {
  var _selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    //Phone Mode
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return GestureDetector(
      onTap: () {
        setState(() {
          //Functionality to implement selected card
          setState(() {
            if (_selectedIndex == widget.index) {
              _selectedIndex = -1;
            } else {
              _selectedIndex = widget.index;
            }
          });
        });
      },
      child: Container(
        constraints: BoxConstraints(
            minHeight: widget.index == _selectedIndex ? 180 : 153,
            minWidth: widget.index == _selectedIndex
                ? isLandscape
                    ? MediaQuery.of(context).size.width * 0.25
                    : MediaQuery.of(context).size.width * 0.4
                : isLandscape
                    ? MediaQuery.of(context).size.width * 0.2
                    : MediaQuery.of(context).size.width * 0.35),
        child: Card(
          color: widget.index == _selectedIndex
              ? AppColors.COLOR_LIGHTISH_BLUE
              : AppColors.COLOR_WHITE,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(widget.image),
                  SizedBox(
                    height: 28,
                  ),
                  Text(
                    widget.balance,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(widget.number,
                      style: Theme.of(context).textTheme.headline4),
                  SizedBox(
                    height: 12,
                  ),
                  Text(widget.subdata,
                      style: Theme.of(context).textTheme.headline6),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
