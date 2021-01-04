import 'package:flutter/material.dart';
import 'package:flutter_task/providers/userdetails_provider.dart';

import 'package:flutter_task/screens/app.dart';
import 'package:flutter_task/screens/auth.dart';
import 'package:flutter_task/screens/find_out_more_page.dart';
import 'package:flutter_task/themes/themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Users()),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => AuthScreen(),
          '/app': (context) => App(),
          '/findOutMore': (context) => FindOutMorePage()
        },
        theme: Themes.lightTheme,
        title: 'Flutter task',
      ),
    );
  }
}
