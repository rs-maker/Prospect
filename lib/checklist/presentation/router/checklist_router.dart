import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/checklist/logic/checklist_cubit.dart';
import 'package:prospect/checklist/presentation/screens/page_intro.dart';
import 'package:prospect/checklist/presentation/screens/page_one.dart';
import 'package:prospect/checklist/presentation/screens/page_two.dart';

class CheckListRouter {
  //this creates a Bloc provided to all checklistpages containing the checkmarks
  // ChecListCubit(parameter) where parameter is the number of checkmarks in the list
  final CheckListCubit _checkListCubit = CheckListCubit(13);

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _checkListCubit,
            child: IntroPage(),
          ),
        );
      case '/one':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _checkListCubit,
            child: PageOne(),
          ),
        );
      case '/two':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _checkListCubit,
            child: PageTwo(),
          ),
        );
      default:
        return null;
    }
  }

  void dispose() {
    _checkListCubit.close();
  }
}
