import 'package:flutter/material.dart';

class NetflixCard extends StatelessWidget {
  final String bgimage;
  NetflixCard({
    @required this.bgimage,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Container(
            width: 140,
            height: 185,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(bgimage),
              ),
            )));
  }
}
