import 'package:flutter/cupertino.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';
import 'layouts/navbar_layout.dart';
import 'layouts/textblock_layout.dart';
import 'layouts/textpage_layout.dart';

class IntroPage extends TextPage with NavigationStates {
  final List<Widget> children = [
    TextBlock(
      title: "Weshalb wurde mir Roaccutane verschrieben?",
      content:
          "Roaccutane wird bei schweren Formen der Akne angewendet (beispielsweise bei Akne mit Knotenbildung, Akne conglobata oder Akne mit dem Risiko einer dauerhaften Narbenbildung), "
          "die sich trotz Anwendung anderer Akne-Behandlungen, einschließlich der Therapie mit Antibiotika zum Einnehmen, nicht gebessert haben. Der Wirkstoff von Roaccutane – Isotretinoin - wirkt,"
          " indem er die Bildung von Talg unterdrückt (siehe unten) und die Entzündung der Haut lindert. Roaccutane wird seit vielen Jahren von Millionen von Patienten auf der ganzen Welt verwendet."
          " Ärzte betrachten Roaccutane als eines der wirksamsten Arzneimittel zur Behandlung von schweren Akneformen, die ihnen zur Verfügung stehen. Sie müssen jedoch "
          "unbedingt zur Kenntnis nehmen, dass Roaccutane schwere Nebenwirkungen verursachen kann. Bevor Sie sich für eine Behandlung mit Roaccutane entscheiden, "
          "müssen Sie mit Ihrem Arzt sprechen, damit der Schweregrad Ihrer Akne und die potentiellen Vorteile einer Roaccutane-Behandlung festgestellt werden können. "
          "Sie müssen unbedingt wissen, wie Sie Roaccutane korrekt anwenden und womit Sie während der Behandlung rechnen müssen. ",
      titleSize: 26,
      contentSize: 18,
    ),
    TextBlock(
      title: "Einige Fakten zur Akne",
      content:
          "Obwohl die Akne in den Augen vieler Menschen eine Krankheit von heranwachsenden "
          "Jugendlichen darstellt, können auch Erwachsene im Alter von 30 oder 40 Jahren an Akne "
          "Leiden. Bei Männern verläuft die Akne häufig schwerer als bei Frauen. Schwere AkneFormen können dauerhafte Narben hinterlassen. "
          "Eine Akne entsteht in den Talgdrüsen, welche die in der Haut vorhandenen Haarfollikel "
          "umgeben (siehe Abbildung). Diese Drüsen sondern eine ölige Mischung ab, die als Talg "
          "bezeichnet wird und normalerweise in Richtung Hautoberfläche abfließt. In der Pubertät "
          "entwickeln sich die Talgdrüsen, und ihre Talgproduktion nimmt zu, insbesondere im Gesicht, "
          "am Rumpf und auf dem Rücken.",
      titleSize: 24,
      contentSize: 18,
    ),
    Image.asset(
      "images/akne_horizontal.png",
      width: 400,
      height: 1200,
    ),
    TextBlock(
      title: "",
      content:
          "Eine Akne tritt dann auf, wenn der normale Abfluss von Talg in Richtung Hautoberfläche "
          "blockiert ist, so dass sich der Talg in der Drüse anhäuft. Diese Anhäufung von Talg führt "
          "schließlich dazu, dass die Wand des Haarfollikels aufbricht und unter der Haut ein "
          "entzündeter Knoten entsteht. Derartige Knoten hinterlassen häufig Narben. "
          "Eine Akne wird nicht durch schlechte Ernährung, Schmutz oder eine fettige Haut verursacht. "
          "Zu den Faktoren, die eine Akne verschlimmern können, zählen emotionaler Stress, "
          "Müdigkeit und die Anwendung bestimmter ungeeigneter Kosmetika. ",
      titleSize: 24,
      contentSize: 18,
    ),
    NavBar(
        back: NavigationEvent.HomePageClickEvent,
        forward: NavigationEvent.SecondPageClickEvent),
  ];
}
