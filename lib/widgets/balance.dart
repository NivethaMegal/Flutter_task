import 'package:flutter/material.dart';
import 'package:flutter_task/container/balance_card_container.dart';
import 'package:flutter_task/themes/colors.dart';
import 'package:flutter_task/widgets/recommended.dart';

class Balance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColors.COLOR_LIGHT_BLUE,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
              child: Column(
                children: [
                  BalanceDataContainer(),
                  Recommended()
                  // BalanceCard(
                  //     balance: Strings.LOAD_BALANCE,
                  //     image: Images.LOAD_BALANCE,
                  //     number: 'P 1675.00',
                  //     subdata: Strings.VALID_DATA),
                  // BalanceCard(
                  //     balance: Strings.DATA_BALANCE,
                  //     image: Images.DATA_BALANCE,
                  //     number: '300 MB',
                  //     subdata: Strings.GB),
                  // BalanceCard(
                  //     balance: Strings.LOAD_BALANCE,
                  //     image: Images.LOAD_BALANCE,
                  //     number: 'P 1675.00',
                  //     subdata: Strings.VALID_DATA),
                  // BalanceCard(
                  //     balance: Strings.DATA_BALANCE,
                  //     image: Images.DATA_BALANCE,
                  //     number: '300 MB',
                  //     subdata: Strings.GB),
                ],
              ),
            )
          ],
        ));
  }
}
