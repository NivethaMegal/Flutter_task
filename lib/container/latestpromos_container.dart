import 'package:flutter/material.dart';
import 'package:flutter_task/core/services/latestpromos_services.dart';
import 'package:flutter_task/widgets/common/latest_promo.dart';

//LatestPromo Card container to retrieve data from json
class LatestPromoDataContainer extends StatefulWidget {
  @override
  _LatestPromoDataContainerState createState() =>
      _LatestPromoDataContainerState();
}

class _LatestPromoDataContainerState extends State<LatestPromoDataContainer> {
  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      child: FutureBuilder(
          future: Services().getLatestPromoData(context),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                  height: isLandscape
                      ? MediaQuery.of(context).size.height * 0.44
                      : MediaQuery.of(context).size.height * 0.264,
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
