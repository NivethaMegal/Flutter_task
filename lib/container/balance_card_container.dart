import 'package:flutter/material.dart';
import 'package:flutter_task/core/services/balance_services.dart';
import 'package:flutter_task/widgets/common/balance_card.dart';

//Balance card container to retrieve data from json
class BalanceDataContainer extends StatefulWidget {
  @override
  _BalanceDataContainerState createState() => _BalanceDataContainerState();
}

class _BalanceDataContainerState extends State<BalanceDataContainer> {
  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      child: FutureBuilder(
          future: Services().getBalanceData(context),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                  height: isLandscape
                      ? MediaQuery.of(context).size.height * 0.4
                      : MediaQuery.of(context).size.height * 0.25,
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
