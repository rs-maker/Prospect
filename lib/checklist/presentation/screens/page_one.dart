import 'package:flutter/material.dart';
import 'package:prospect/checklist/logic/checklist_cubit.dart';
import 'package:prospect/checklist/presentation/screens/bullet_questions.dart';
import 'package:prospect/checklist/presentation/screens/questionBlock.dart';
import 'package:prospect/checklist/presentation/screens/question_page.dart';

class PageOne extends QuestionPage {
  @override
  String get titel => "Vor der Verordnung";

  @override
  String get forward => "/two";

  @override
  String get back => "/";

  @override
  List<Widget> buildQuestions(
      CheckListState checkListState, QuestionPageState questionPageState) {
    QuestionBlock questionBlock0 = QuestionBlock(
      question:
          "Mir ist bewusst, dass eine Behandlung mit Roaccutane nur als letzte Möglichkeit begonnen werden soll, wenn alle vorherigen Behandlungen mit anderen Medikamenten nicht gewirkt haben.",
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 0,
    );
    BulletQuestions questionBlock1 = BulletQuestions(
      title: "Roaccutane darf auf keinen Fall eingenommen werden von: ",
      questions: [
        "Schwangeren oder stillenden Frauen",
        "Gebährfähigen Frauen welche nicht in der Lage sind allen Bedingungen des Verhütungsprogramms zu folgen"
      ],
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 1,
    );
    BulletQuestions questionBlock2 = BulletQuestions(
      title:
          "Roaccutane darf auf keinen Fall eingenommen werden von Patienten mit: ",
      questions: [
        "Leberinsuffizienz",
        "Stark erhöhten Blutfettwerten",
        "Hypervitaminose A",
        "Überempfindlichkeit gegen Isotretinoin oder einem der Hilfswirkstoffe",
        "Einer gleichzeit laufenden Behandlung mit Tetrazyklinen"
      ],
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
      return [questionBlock0, questionBlock2, questionBlock3, questionBlock4];
    }
  }
}
