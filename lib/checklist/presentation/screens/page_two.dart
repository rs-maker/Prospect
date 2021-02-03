import 'package:flutter/material.dart';
import 'package:prospect/checklist/logic/checklist_cubit.dart';
import 'package:prospect/checklist/presentation/screens/questionBlock.dart';
import 'package:prospect/checklist/presentation/screens/question_page.dart';

class PageTwo extends QuestionPage {
  @override
  String get forward => null;
  @override
  String get back => "/";
  @override
  List<Widget> buildQuestions(
      CheckListState checkListState, QuestionPageState questionPageState) {
    return [
      QuestionBlock(
        question: "TEST",
        checkListState: checkListState,
        questionPageState: questionPageState,
        number: 4,
      ),
      QuestionBlock(
        question: "TEST",
        checkListState: checkListState,
        questionPageState: questionPageState,
        number: 5,
      ),
      QuestionBlock(
        question: "TEST",
        checkListState: checkListState,
        questionPageState: questionPageState,
        number: 6,
      ),
      QuestionBlock(
        question: "TEST",
        checkListState: checkListState,
        questionPageState: questionPageState,
        number: 7,
      )
    ];
  }
}
