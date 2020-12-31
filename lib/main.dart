import 'package:flutter/material.dart';

import 'package:flutter_task/screens/app.dart';
import 'package:flutter_task/themes/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Themes.lightTheme, title: 'Flutter task', home: App());
  }
}
