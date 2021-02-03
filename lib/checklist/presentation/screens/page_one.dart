import 'package:flutter/material.dart';
import 'package:prospect/checklist/logic/checklist_cubit.dart';
import 'package:prospect/checklist/presentation/screens/questionBlock.dart';
import 'package:prospect/checklist/presentation/screens/question_page.dart';

class PageOne extends QuestionPage {
  @override
  String get forward => "/two";

  @override
  String get back => null;

  @override
  List<Widget> buildQuestions(
      CheckListState checkListState, QuestionPageState questionPageState) {
    QuestionBlock questionBlock0 = QuestionBlock(
      question: "FEMALE ONLY",
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 0,
    );
    QuestionBlock questionBlock1 = QuestionBlock(
      question: "TEST",
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 1,
    );
    QuestionBlock questionBlock2 = QuestionBlock(
      question: "TEST",
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 2,
    );
    QuestionBlock questionBlock3 = QuestionBlock(
      question: "TEST",
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 3,
    );
    QuestionBlock questionBlock4 = QuestionBlock(
      question: "MALE ONLY",
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 4,
    );
    if (checkListState.childbearing) {
      return [questionBlock0, questionBlock1, questionBlock2, questionBlock3];
    } else {
      return [questionBlock1, questionBlock2, questionBlock3, questionBlock4];
    }
  }
}
