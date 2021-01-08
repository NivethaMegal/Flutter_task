import 'package:flutter/material.dart';

class NetflixCard extends StatelessWidget {
  final String bgimage;
  NetflixCard({
    @required this.bgimage,
  });
  @override
  Widget build(BuildContext context) {
    //Phone Mode
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
        padding: const EdgeInsets.only(right: 10.0),
        width: isLandscape
            ? MediaQuery.of(context).size.width * 0.3
            : MediaQuery.of(context).size.width * 0.34,
        height: isLandscape
            ? MediaQuery.of(context).size.height * 0.5
            : MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(bgimage),
          ),
        ));
  }
}
