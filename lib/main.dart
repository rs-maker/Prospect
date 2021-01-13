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
        /* THESE ARE THE OFFICIAL TUM COLORS:
        I am not yet 100% sure if want to use these exact colors
                RGB         | Name        | HEX
                <=========== Main colors ===========>
                0,101,189   | TUMBlue     | #0065bd
                0,0,0       | Black
                255,255,255 | White
                <=========== Secondaries ===========>
                0,82,147    | DarkBlue    | #005293
                100,160,200 | LightBlue   | #64a0c8
                152,198,234 | LighterBlue | #98c6ea
                153,153,153 | Gray        | #999999
                <===========   Emphasis  ===========>
                227,114,34  | Orange      | #e37222
                162,173,0   | Green       | #a2ad00
                218,215,203 | LightGray   | #dad7cb
*/
      home: SideBarLayout(),
    );
  }
}
