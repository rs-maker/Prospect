import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prospect/presentation/router/navigation_bloc.dart';
import 'widgets/navbar_layout.dart';

class IntroPage1 extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).backgroundColor,
        padding: const EdgeInsets.all(32),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: RichText(
                    text: TextSpan(
                        text: "Einige Fakten zur Akne\n",
                        style: Theme.of(context).textTheme.headline1,
                        children: [
                          TextSpan(
                              text:
                                  "Obwohl die Akne in den Augen vieler Menschen eine Krankheit von heranwachsenden "
                                  "Jugendlichen darstellt, können auch Erwachsene im Alter von 30 oder 40 Jahren an Akne "
                                  "Leiden. Bei Männern verläuft die Akne häufig schwerer als bei Frauen. Schwere AkneFormen können dauerhafte Narben hinterlassen. "
                                  "Eine Akne entsteht in den Talgdrüsen, welche die in der Haut vorhandenen Haarfollikel "
                                  "umgeben (siehe Abbildung).\n"
                                  "Diese Drüsen sondern eine ölige Mischung ab, die als Talg "
                                  "bezeichnet wird und normalerweise in Richtung Hautoberfläche abfließt. In der Pubertät "
                                  "entwickeln sich die Talgdrüsen, und ihre Talgproduktion nimmt zu, insbesondere im Gesicht, "
                                  "am Rumpf und auf dem Rücken.\n ",
                              style: Theme.of(context).textTheme.bodyText1),
                          TextSpan(
                              text:
                                  "Eine Akne tritt dann auf, wenn der normale Abfluss von Talg in Richtung Hautoberfläche "
                                  "blockiert ist, so dass sich der Talg in der Drüse anhäuft. Diese Anhäufung von Talg führt "
                                  "schließlich dazu, dass die Wand des Haarfollikels aufbricht und unter der Haut ein "
                                  "entzündeter Knoten entsteht. Derartige Knoten hinterlassen häufig Narben."
                                  "Eine Akne wird nicht durch schlechte Ernährung, Schmutz oder eine fettige Haut verursacht. "
                                  "Zu den Faktoren, die eine Akne verschlimmern können, zählen emotionaler Stress, "
                                  "Müdigkeit und die Anwendung bestimmter ungeeigneter Kosmetika.\n ",
                              style: Theme.of(context).textTheme.bodyText1)
                        ]),
                  ),
                ),
                Image.asset(
                  'assets/images/akne_vertical.png',
                  width: 155,
                  height: 1000,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            NavBar(
                back: NavigationEvent.FirstPageClickEvent,
                forward: NavigationEvent.SecondPageClickEvent),
          ],
        ));
  }
}
