import 'package:flutter/material.dart';
import 'package:flutter_task/core/services/balance_services.dart';
import 'package:flutter_task/widgets/common/balance_card.dart';

class BalanceDataContainer extends StatefulWidget {
  @override
  _BalanceDataContainerState createState() => _BalanceDataContainerState();
}

class _BalanceDataContainerState extends State<BalanceDataContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
          future: Services().getBalanceData(context),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                  height: 180,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    for (var index = 0;
                        index < snapshot.data.balance.length;
                        index++)
                      BalanceCard(
                          index: snapshot.data.balance[index].id,
                          image: snapshot.data.balance[index].image,
                          balance: snapshot.data.balance[index].balancename,
                          number: snapshot.data.balance[index].number,
                          subdata: snapshot.data.balance[index].subdata)
                  ]));
            } else if (snapshot.hasError) {
              return new Text("${snapshot.error}");
            }
            return new CircularProgressIndicator();
          }),
    );
  }
}
