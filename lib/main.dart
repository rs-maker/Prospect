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
          backgroundColor: Colors.white,
          //Color(0xFF5689B6),
          /*This is the color for any kind of text Background*/
          scaffoldBackgroundColor: Colors.white,
          /* Reserving this field for the eventual checklist background*/
          primaryColor: Color(0xFF005293),
          /* Primary color tobe used for SideBar and other big fields : TUM SECONDARY BLUE*/
          secondaryHeaderColor: Color(0xFF1BB5FD),
          /* use this for buttons and Icons : CUSTOM COLOR MY GIRLFRIEND REALLY LIKES ¯\_(ツ)_/¯*/
          indicatorColor: Colors.white,
          /* Text on anything but white background and little indicators that need to stand out */
          dividerColor: Color(0xFF545B62),
          disabledColor: Colors.grey,
          /* THESE ARE THE OFFICIAL TUM COLORS:
        (We are using some of them but not all)
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
          //Text theme
          textTheme: TextTheme(
              headline1: TextStyle(
                fontSize: 70,
                fontFamily: 'BebasNeue',
                height: 1,
              ),
              headline2: TextStyle(
                fontSize: 30,
                fontFamily: 'RobotoMedium',
                height: 1,
              ),
              headline3: TextStyle(
                fontSize: 25,
                fontFamily: 'RobotoMedium',
                height: 1,
              ),
              bodyText1: TextStyle(
                  fontSize: 30,
                  fontFamily: "RobotoMedium",
                  letterSpacing: -1,
                  height: 1),
              bodyText2: TextStyle(
                  fontFamily: 'RobotoMedium',
                  decoration: TextDecoration.underline,
                  fontSize: 18,
                  height: 0,
                  color: Color(0xE60000EE)) //for links
              )),


      home: SideBarLayout(),
    );
  }
}
