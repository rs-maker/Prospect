import 'package:flutter/cupertino.dart';
import 'package:prospect/presentation/router/navigation_bloc.dart';
import 'package:prospect/presentation/screens/layouts/bulletlist_layout.dart';
import 'layouts/navbar_layout.dart';
import 'package:flutter/material.dart';

class TwoPoinTwoPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          children: [
            RichText(text: TextSpan(
              text: "Für weibliche Patienten im gebährfähigen Alter gilt: \n",
              style: Theme.of(context).textTheme.headline1,
            )),
            BulletList(
              strings: [
                "Sie dürfen Roaccutane auf keinen Fall einnehmen, wenn Sie schwanger sind.",
                "Sie dürfen während der Behandlung mit Roaccutane sowie im ersten Monat nach Ende "
                    "der Behandlung auf keinen Fall schwanger werden.",
                "Bei Babys, deren Mütter während der Schwangerschaft Roaccutane eingenommen haben "
                    "– gleichgültig, wie lange und in welcher Dosierung – können schwere Missbildungen "
                    "auftreten (auch in Fällen, in denen Roaccutane nur für kurze Zeit während der "
                    "Schwangerschaft eingenommen wird). Es besteht ein extrem hohes Risiko, dass Ihr Baby "
                    "mit schweren Missbildungen zur Welt kommt, wenn Sie während einer Behandlung mit "
                    "Roaccutane schwanger sind oder schwanger werden. Jedes Baby, das der Wirkung von "
                    "Roaccutane ausgesetzt ist, kann von Missbildungen betroffen sein. Auch das Risiko, das "
                    "Kind vor seiner Geburt zu verlieren (Fehlgeburt), ist erhöht. ",
                "Ihr Arzt wird Sie bitten, ein Formular zu lesen und zu unterschreiben. Mit Ihrer "
                    "Unterschrift bestätigen Sie, dass Sie verstanden haben, dass die Einnahme von "
                    "Roaccutane mit schwerwiegenden Risiken verbunden ist. ",
                "Das erste Rezept für Roaccutane erhalten Sie erst dann, wenn Sie vor Beginn der "
                    "Roaccutane-Behandlung einen Schwangerschaftstest durchgeführt haben (am zweiten "
                    "oder dritten Tag der Monatsblutung), der negativ ausgefallen ist. Sobald der Arzt die "
                    "Gewissheit hat, dass Sie nicht schwanger sind, stellt er Ihnen das erste Rezept für "
                    "Roaccutane aus, das für eine einmonatige Roaccutane-Behandlung ausreicht. Um nach "
                    "Ablauf eines Monats ein neues Rezept zu erhalten, müssen Sie zuvor Ihren Arzt "
                    "aufsuchen. Unter Umständen wird der Arzt Sie auffordern, jeden Monat einen "
                    "Schwangerschaftstest durchzuführen. Auf jeden Fall müssen Sie fünf Wochen nach dem "
                    "Ende der Roaccutane-Behandlung einen letzten Schwangerschaftstest durchführen. ",
                "Sie müssen mit Ihrem Arzt über eine sichere Empfängnisverhütung sprechen. Sie müssen "
                    " mindestens eine, vorzugsweise jedoch zwei wirksame Empfängnisverhütungsmethoden "
                    "anwenden, und zwar mindestens einen Monat vor Beginn der Roaccutane-Behandlung, "
                    "  während der gesamten Behandlungsdauer sowie einen Monat nach Ende der Einnahme "
                    "  von Roaccutane. Jede Verhütungsmethode kann versagen – auch orale Kontrazeptiva (d."
                    "  h. die „Pille“), Intrauterinpessare (Spiralen) oder implantierbare Verhütungsmittel. Aus "
                    "  diesem Grunde wird dringend empfohlen, dass Sie zwei Verhütungsmethoden "
                    "gleichzeitig anwenden, darunter eine Barrieremethode (z. B. Kondome). ",
                "Sie müssen auch dann verhüten, wenn Sie derzeit nicht sexuell aktiv sind, es sei denn, Ihr "
                    "Arzt trifft eine andere Entscheidung. ",
                " Sie müssen die Einnahme von Roaccutane sofort abbrechen, wenn Sie ungeschützten "
                    "    Geschlechtsverkehr hatten, wenn Ihre Monatsblutung ausbleibt oder wenn Sie während "
                    "    der Behandlung bzw. im ersten Monat nach dem Ende der Behandlung schwanger "
                    "    werden. Suchen Sie in diesem Fall sofort Ihren Arzt auf",
                "Die Behandlung mit Roaccutane hat keinerlei Auswirkungen auf Ihre Fruchtbarkeit. "
                    "Einen Monat nach dem Ende der Behandlung ist Roaccutane aus Ihrem Körper "
                    "verschwunden und hat keinerlei Einfluss auf Ihre Fähigkeit mehr, gesunde Kinder zur "
                    "Welt zu bringen. "
              ],
            ),
            NavBar(
              back: NavigationEvent.SecondPageClickEvent,
              forward: NavigationEvent.ThirdPageClickEvent,
            ),
          ]),
    );
  }
}
