import 'package:flutter/material.dart';
import 'package:flutter_task/resources/images.dart';
import 'package:flutter_task/resources/strings.dart';
import 'package:flutter_task/common/balanceCard.dart';
import 'package:flutter_task/themes/colors.dart';
import 'package:flutter_task/widgets/recommended.dart';

class Balance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.COLOR_LIGHT_BLUE,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  BalanceCard(
                      balance: Strings.LOAD_BALANCE,
                      image: Images.LOAD_BALANCE,
                      number: 'P 1675.00',
                      subdata: Strings.VALID_DATA),
                  BalanceCard(
                      balance: Strings.DATA_BALANCE,
                      image: Images.DATA_BALANCE,
                      number: '300 MB',
                      subdata: Strings.GB),
                  BalanceCard(
                      balance: Strings.LOAD_BALANCE,
                      image: Images.LOAD_BALANCE,
                      number: 'P 1675.00',
                      subdata: Strings.VALID_DATA),
                  BalanceCard(
                      balance: Strings.DATA_BALANCE,
                      image: Images.DATA_BALANCE,
                      number: '300 MB',
                      subdata: Strings.GB),
                ],
              ),
            ),
          ),
          Recommended()
        ],
      ),
    );
  }
}
