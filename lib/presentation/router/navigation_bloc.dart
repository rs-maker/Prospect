import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/checklist/checklistmain.dart';
import 'package:prospect/presentation/screens/onepointone_page.dart';
import 'package:prospect/presentation/screens/fifth_page.dart';
import 'package:prospect/presentation/screens/first_page.dart';
import 'package:prospect/presentation/screens/fourth_page.dart';
import 'package:prospect/presentation/screens/homepage.dart';
import 'package:prospect/presentation/screens/second_page.dart';
import 'package:prospect/presentation/screens/sixth_page.dart';
import 'package:prospect/presentation/screens/third_page.dart';
import 'package:prospect/presentation/screens/twopointwo_page.dart';

enum NavigationEvent {
  HomePageClickEvent,
  FirstPageClickEvent,
  OnePointOneClickEvent,
  SecondPageClickEvent,
  TwoPointTwoClickEvent,
  ThirdPageClickEvent,
  FourthPageClickEvent,
  FifthPageClickEvent,
  SixthPageClickEvent,
  CheckListClickEvent,
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
      case NavigationEvent.CheckListClickEvent:
        yield MyChecklist();
        break;
      case NavigationEvent.OnePointOneClickEvent:
        yield IntroPage1();
        break;
      case NavigationEvent.TwoPointTwoClickEvent:
        yield TwoPoinTwoPage();
        break;
      default:
        yield HomePage();
        break;
    }
  }
}
