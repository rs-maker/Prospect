import 'package:flutter/material.dart';
import 'package:prospect/checklist_revisited/logic/checklist_cubit.dart';
import 'package:prospect/checklist_revisited/presentation/screens/QuestionBlock.dart';
import 'package:prospect/checklist_revisited/presentation/screens/question_page.dart';

class PageOne extends QuestionPage {
  @override
  List<Widget> buildQuestions(
      CheckListState checkListState, QuestionPageState questionPageState) {
    return [
      QuestionBlock(
        question: "TEST",
        checkListState: checkListState,
        questionPageState: questionPageState,
        number: 0,
      ),
      QuestionBlock(
        question: "TEST",
        checkListState: checkListState,
        questionPageState: questionPageState,
        number: 1,
      ),
      QuestionBlock(
        question: "TEST",
        checkListState: checkListState,
        questionPageState: questionPageState,
        number: 2,
      ),
      QuestionBlock(
        question: "TEST",
        checkListState: checkListState,
        questionPageState: questionPageState,
        number: 3,
      )
    ];
  }
}
