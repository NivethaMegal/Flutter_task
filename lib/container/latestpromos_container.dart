import 'package:flutter/material.dart';
import 'package:flutter_task/core/services/latestpromos_services.dart';
import 'package:flutter_task/widgets/common/latest_promo.dart';

class LatestPromoDataContainer extends StatefulWidget {
  @override
  _LatestPromoDataContainerState createState() =>
      _LatestPromoDataContainerState();
}

class _LatestPromoDataContainerState extends State<LatestPromoDataContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
          future: Services().getLatestPromoData(context),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                  height: 180,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    for (var index = 0;
                        index < snapshot.data.latestPromos.length;
                        index++)
                      LatestPromos(
                          bgimage: snapshot.data.latestPromos[index].bgimage,
                          icon: snapshot.data.latestPromos[index].icon,
                          data: snapshot.data.latestPromos[index].data,
                          price: snapshot.data.latestPromos[index].price)
                  ]));
            } else if (snapshot.hasError) {
              return new Text("${snapshot.error}");
            }
            return new CircularProgressIndicator();
          }),
    );
  }
}
