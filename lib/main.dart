import 'package:flutter/material.dart';
import 'package:prospect/app/locator.dart';
import 'package:prospect/sidebar/sidebar_layout.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
        accentColor: Colors.blue,
        buttonColor: Colors.lightBlue,
      ),
      home: SideBarLayout(),

      /* this was for stacked architecture which is not currently used
     // initialRoute: auto_router.Routes.homeViewRoute,
      onGenerateRoute: auto_router.Router().onGenerateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,*/
    );
  }
}
