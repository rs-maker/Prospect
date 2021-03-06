import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/presentation/router/navigation_bloc.dart';
import 'package:prospect/presentation/sidebar/sidebar.dart';

class SideBarLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavigationBloc>(
        create: (context) => NavigationBloc(),
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              BlocBuilder<NavigationBloc, NavigationStates>(
                  builder: (context, navigationState){
                    return navigationState as Widget;
                  },
              ),
              SideBar(),
            ],
          ),
        ));
  }
}
