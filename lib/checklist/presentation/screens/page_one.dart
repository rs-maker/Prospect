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
      question:
          "Ich bin mir bewusst dass Isotretinoin (der Wirkstoff in Roaccutane) \"teratogen\" ist. Teratogene Stoffe können schwere Missbildungen an ungeborenen Kindern und Neugeborenen verursachen.",
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 3,
    );
    QuestionBlock questionBlock4 = QuestionBlock(
      question: "Ich weiß dass ich wegen dess teratogenen Risiko bis einschließlich ein Monat nach Ende der Behandlung mit Roaccutane kein Blut spenden darf.",
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 4,
    );
    QuestionBlock questionBlock5 = QuestionBlock(
      question: "Ich darf Roaccutane mit niemandem teilen und muss unverbrauchte Tabletten an die Apotheke zurückgeben",
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 5,
    );
    QuestionBlock questionBlock6 = QuestionBlock(
      question: "Ich verstehe, dass ich während meiner Behandlung monantliche Kontrolluntersuchungen einhalten muss.",
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 5,
    );
    QuestionBlock questionBlock7 = QuestionBlock(
      question: "Ich verstehe, dass ich einen Monat vor meiner Behandlung bis einschließlich einen Monat nach Ende der Behandlung untunterbrochen wirksam verhüten muss.",
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 5,
    );
    QuestionBlock questionBlock8 = QuestionBlock(
      question: "Ich verstehe dass ich vor meiner Behandlung mit einem Gynäkologen sprechen muss, damit dieser die Therapie erlaubt.",
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 5,
    );
    QuestionBlock questionBlock9 = QuestionBlock(
      question: "Ich verstehe dass die oberen Punkte auch zutreffen wenn ich im Moment nicht sexuell aktiv bin oder meine Periode nicht habe.",
      checkListState: checkListState,
      questionPageState: questionPageState,
      number: 5,
    );
    if (checkListState.childbearing) {
      return [questionBlock0, questionBlock1, questionBlock2, questionBlock3, questionBlock4,questionBlock5, questionBlock6, questionBlock7, questionBlock8,questionBlock9];
    } else {
      return [questionBlock0, questionBlock2, questionBlock3, questionBlock4,questionBlock5];
    }
  }
}
