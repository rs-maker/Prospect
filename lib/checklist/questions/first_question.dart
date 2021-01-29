import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';
import 'package:prospect/checklist/questions/question_layout.dart';

class FirstQuestion extends QuestionLayout {
  final NavigationEvent forward = NavigationEvent.SecondQuestionEvent;
  final NavigationEvent back = null;
  final LinkedHashMap<int, String> questions = setupQuestions();

  FirstQuestion({Key key, Key checkListKey})
      : super(key: key, checkListKey: checkListKey);

  static Map<int, String> setupQuestions() {
    LinkedHashMap<int, String> ret = new LinkedHashMap();
    ret.putIfAbsent(0, () => "Null");
    ret.putIfAbsent(1, () => "Eins");
    ret.putIfAbsent(2, () => "Zwei");
    ret.putIfAbsent(3, () => "Drei");
    return ret;
  }
}
