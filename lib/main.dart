import 'package:flutter/material.dart';
import 'package:flutter_task/providers/accountno_provider.dart';
import 'package:flutter_task/providers/notificationcounter_provider.dart';
import 'package:flutter_task/providers/userdetails_provider.dart';

import 'package:flutter_task/screens/app.dart';
import 'package:flutter_task/screens/auth.dart';
import 'package:flutter_task/screens/find_out_more_page.dart';
import 'package:flutter_task/themes/themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Initializing Firebase App
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //Listing Providers in MulitiProvider
      providers: [
        ChangeNotifierProvider(create: (_) => Users()),
        ChangeNotifierProvider(create: (_) => Counter()),
        ChangeNotifierProvider(create: (_) => AccNoList()),
      ],
      child: MaterialApp(
          routes: {'/findOutMore': (context) => FindOutMorePage()},
          theme: Themes.lightTheme,
          title: 'Flutter task',
          home: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, userSnapshot) {
              if (userSnapshot.hasData) {
                return App();
              } else {
                return AuthScreen();
              }
            },
          )),
    );
  }
}
