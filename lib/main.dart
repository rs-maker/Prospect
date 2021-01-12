import 'package:flutter/material.dart';
import 'package:prospect/sidebar/sidebar_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //TODO: set up theme to actually be used right now it just... exists
      theme: ThemeData(
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
        accentColor: Colors.blue,
        buttonColor: Colors.lightBlue,
      ),
      home: SideBarLayout(),
    );
  }
}
