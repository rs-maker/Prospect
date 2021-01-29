import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';
import 'checklist.dart';

class CheckListLayout extends StatelessWidget with NavigationStates {
  final GlobalKey<CheckListState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    CheckList checkList = CheckList(key: _key);
    return BlocProvider<NavigationBloc>(
        create: (context) => NavigationBloc.question(checkListKey: _key),
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              BlocBuilder<NavigationBloc, NavigationStates>(
                builder: (context, navigationState) {
                  return navigationState as Widget;
                },
              ),
              Align(alignment: Alignment.topRight, child: checkList),
            ],
          ),
        ));
  }
}
