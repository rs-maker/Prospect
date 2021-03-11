import 'package:flutter/material.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';
import 'package:prospect/checklist/presentation/router/checklist_router.dart';

class MyChecklist extends StatefulWidget with NavigationStates{
  @override
  _MyChecklistState createState() => _MyChecklistState();
}

class _MyChecklistState extends State<MyChecklist> {
  final CheckListRouter _checkListRouter = CheckListRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CHECKLISTE',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: _checkListRouter.onGenerateRoute,
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
                fontSize: 18,
                height: 1,
               ) //for links
        )),
    );
  }
  @override
  void dispose() {
    _checkListRouter.dispose();
    super.dispose();
  }
}
