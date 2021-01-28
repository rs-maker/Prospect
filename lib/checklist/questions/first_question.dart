import 'package:flutter/cupertino.dart';
import 'package:prospect/checklist/questions/question_layout.dart';

class FirstQuestion extends QuestionLayout {
  final List<String> questions = ["1","2","3"];
  FirstQuestion({Key key, Key checkListKey}) : super(key: key,checkListKey: checkListKey);
}
