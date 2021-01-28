import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prospect/checklist/checklist_layout.dart';
import 'package:prospect/checklist/questions/first_question.dart';
import 'navigation_bloc.dart';

enum NavigationEvent {
  CheckListClickEvent,
  FirstQuestionClickEvent,
}

class CheckListNav extends Bloc<NavigationEvent, NavigationStates> {
  final Key checklistkey;
  CheckListNav({this.checklistkey}) : super (FirstQuestion(checkListKey: checklistkey));

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvent event) async* {
    switch (event) {
      case NavigationEvent.CheckListClickEvent:
        yield CheckListLayout();
        break;
      case NavigationEvent.FirstQuestionClickEvent:
        yield FirstQuestion();
        break;
    }
  }
}
