import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';
import 'package:prospect/checklist/questions/question_layout.dart';

class SecondQuestion extends QuestionLayout {
  final LinkedHashMap<int, String> questions = setupQuestions();
  final NavigationEvent forward = null;
  final NavigationEvent back = NavigationEvent.FirstQuestionClickEvent;

  SecondQuestion({Key key, Key checkListKey})
      : super(key: key, checkListKey: checkListKey);

  static Map<int, String> setupQuestions() {
    LinkedHashMap<int, String> ret = new LinkedHashMap();
    ret.putIfAbsent(4, () => "Vier");
    ret.putIfAbsent(5, () => "Fünf");
    ret.putIfAbsent(6, () => "Sechs");
    ret.putIfAbsent(7, () => "Sieben");
    return ret;
  }
}
