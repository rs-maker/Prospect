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

      theme: ThemeData(
        backgroundColor: Colors.white,                            /*This is the color for any kind of text Background*/
        scaffoldBackgroundColor: Colors.white,                    /* Reserving this field for the eventual checklist background*/
        primaryColor: Color(0xFF262AAA),                              /* Primary color tobe used for SideBar and other big fields */
        secondaryHeaderColor: Color(0xFF1BB5FD),                         /* use this for buttons and Icons */
        indicatorColor: Colors.white,                             /* Text on anything but white background and little indicators that need to stand out */
      ),
      home: SideBarLayout(),
    );
  }
}
