import 'package:flutter/material.dart';

import 'widgets/tab_navigation.dart';

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda+',
      debugShowCheckedModeBanner:false,
      home: TabBarScreen(),
    );
  }
}