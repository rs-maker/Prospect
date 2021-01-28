import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/bloc/navigation/checknav_bloc.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';
import 'checklist.dart';

class CheckListLayout extends StatelessWidget with NavigationStates {
  final GlobalKey<CheckListState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CheckListNav>(
        create: (context) => CheckListNav(checklistkey: _key),
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              BlocBuilder<CheckListNav, NavigationStates>(
                builder: (context, navigationState) {
                  return navigationState as Widget;
                },
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: CheckList(
                    key: _key,
                  )),
            ],
          ),
        ));
  }
}
