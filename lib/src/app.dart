
import 'package:agenda_mais_app/src/containers/login/login_screen.dart';
import 'package:flutter/material.dart';

import 'widgets/tab_navigation.dart';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda+',
      debugShowCheckedModeBanner:false,
      home: LoginScreen(),
        routes: <String, WidgetBuilder>{
          '/tabbar': (BuildContext context) => TabBarScreen(),
        }
    );
  }
}