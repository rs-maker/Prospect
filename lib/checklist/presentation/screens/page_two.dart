import 'package:flutter/material.dart';
import 'package:prospect/checklist/logic/checklist_cubit.dart';
import 'package:prospect/checklist/presentation/screens/bullet_questions.dart';
import 'package:prospect/checklist/presentation/screens/questionBlock.dart';
import 'package:prospect/checklist/presentation/screens/question_page.dart';

class PageTwo extends QuestionPage {
  @override
  String get titel => "TEST";

  @override
  String get forward => null;

  @override
  String get back => "/one";

  @override
  List<Widget> buildQuestions(
      CheckListState checkListState, QuestionPageState questionPageState) {
    QuestionBlock questionBlock7 = QuestionBlock(
      question:
          "Ich verstehe, dass ich einen Monat vor meiner Behandlung bis einschließlich einen Monat nach Ende der Behandlung untunterbrochen wirksam verhüten muss.",
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 7,
    );
    QuestionBlock questionBlock8 = QuestionBlock(
      question:
          "Ich verstehe dass ich vor meiner Behandlung mit einem Gynäkologen sprechen muss, damit dieser die Therapie erlaubt.",
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 8,
    );
    QuestionBlock questionBlock9 = QuestionBlock(
      question:
          "Ich verstehe dass die oberen Punkte auch zutreffen wenn ich im Moment nicht sexuell aktiv bin oder meine Periode nicht habe.",
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 9,
    );
    QuestionBlock questionBlock10 = QuestionBlock(
      question:
          "Ich kenne die Folgen einer Schwangerschaft während der Behandlung mit Roaccutane und verstehe,"
          " dass ich die Therapie sofort abbrechen und unbedingt einen Arzt aufsuchen muss,"
          " wenn ich glaube dass eine Möglichkeit besteht dass eine Schwangerschaft einegetreten ist",
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 10,
    );
    QuestionBlock questionBlock11 = QuestionBlock(
      question:
          "Ich verstehe, dass mein Arzt mich vor, während und bis zu 5 Wochen nach der Behandlung mit Roaccutane dazu"
          " auffordern wird Schwangerschaftstests vorzunehmen",
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 11,
    );
    BulletQuestions bulletQuestions = BulletQuestions(
      title: "Ich verstehe dass ich mich strafbar machen kann wenn ich: ",
      questions: [
        "Während oder bis einen Monat nach Einnahme von Roaccutane Blut spende",
        "Das mir verschriebene Medikament mit anderen Personen teile",
        "Nach Therapieende unbenutzte Tabletten nicht an die Apotheke zur Entsorgung zurückbringe"
      ],
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 12,
    );
    if(checkListState.childbearing)
      return [questionBlock7, questionBlock8,questionBlock9,questionBlock10,questionBlock11,bulletQuestions];
    else
      return [bulletQuestions];
  }
}
