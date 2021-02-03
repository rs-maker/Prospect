
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/checklist_revisited/logic/checklist_cubit.dart';
import 'package:prospect/checklist_revisited/presentation/screens/ConcretePage.dart';
import 'package:prospect/checklist_revisited/presentation/screens/home_screen.dart';
class CheckListRouter {
  //this creates a Bloc provided to all checklistpages containing the checkmarks
  // ChecListCubit(parameter) where parameter is the number of checkmarks in the list
  final CheckListCubit _checkListCubit = CheckListCubit(10);

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _checkListCubit,
            child: HomeScreen(
              title: "Home Screen",
              color: Colors.blueAccent,
            ),
          ),
        );
      case '/questionpage':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _checkListCubit,
            child: PageOne(),
          ),
        );
      default:
        return null;
    }
  }

  void dispose(){
    _checkListCubit.close();
  }
}