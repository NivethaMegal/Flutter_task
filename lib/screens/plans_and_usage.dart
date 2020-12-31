import 'package:flutter/material.dart';
import 'package:flutter_task/widgets/common/goback_button.dart';
import 'package:flutter_task/widgets/netflix.dart';
import 'package:flutter_task/widgets/screen_heading.dart';

class PlansandUsage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [ScreenHeading(), Netflix(), GoBack()],
    ));
  }
}
