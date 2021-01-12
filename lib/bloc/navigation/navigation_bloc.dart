import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/pages/fourth_page.dart';
import 'package:prospect/pages/homepage.dart';
import 'package:prospect/pages/second_page.dart';
import 'package:prospect/pages/third_page.dart';

enum NavigationEvent {
  HomePageClickEvent,
  SecondPageClickEvent,
  ThirdPageClickEvent,
  FourthPageClickEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvent, NavigationStates> {
  NavigationBloc() : super(HomePage());

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvent event) async* {
    switch (event) {
      case NavigationEvent.HomePageClickEvent:
        yield HomePage();
        break;
      case NavigationEvent.SecondPageClickEvent:
        yield SecondPage();
        break;
      case NavigationEvent.ThirdPageClickEvent:
        yield ThirdPage();
        break;
      case NavigationEvent.FourthPageClickEvent:
        yield FourthPage();
        break;

    }
  }
}
