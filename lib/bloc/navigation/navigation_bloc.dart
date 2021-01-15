import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/pages/fifth_page.dart';
import 'package:prospect/pages/first_page.dart';
import 'package:prospect/pages/fourth_page.dart';
import 'package:prospect/pages/homepage.dart';
import 'package:prospect/pages/second_page.dart';
import 'package:prospect/pages/sixth_page.dart';
import 'package:prospect/pages/third_page.dart';

enum NavigationEvent {
  HomePageClickEvent,
  FirstPageClickEvent,
  SecondPageClickEvent,
  ThirdPageClickEvent,
  FourthPageClickEvent,
  FifthPageClickEvent,
  SixthPageClickEvent,
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
      case NavigationEvent.FirstPageClickEvent:
        yield IntroPage();
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
      case NavigationEvent.FifthPageClickEvent:
        yield FifthPage();
        break;
      case NavigationEvent.SixthPageClickEvent:
        yield SixthPage();
        break;
    }
  }
}
