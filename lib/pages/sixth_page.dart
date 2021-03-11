import 'package:flutter/material.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';
import 'package:prospect/pages/layouts/bulletlist_layout.dart';

import 'layouts/navbar_layout.dart';

class SixthPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          children: [
            RichText(
                text: TextSpan(
                    text: "Was passiert wenn die Behandlung mit Roaccutane abgeschlossen ist?",
                    style: Theme.of(context).textTheme.headline1,
                   )),
            BulletList(
              title: "",
              strings: [
                "Die meisten Patienten, die mit Roaccutane behandelt wurden, stellen fest, dass sich der "
                    "Zustand ihrer Haut auch nach dem Ende der Roaccutane-Behandlung weiter bessert. Bei "
                    "einigen Patienten ist jedoch eine zweite Behandlung mit Roaccutane erforderlich, um ein "
                    "zufriedenstellendes Behandlungsergebnis zu erzielen. Wenn dies bei Ihnen der Fall ist, "
                    "darf die zweite Behandlung erst nach Ablauf von mindestens acht Wochen nach dem "
                    "Ende der ersten Roaccutane-Behandlung erfolgen. ",
                "Im ersten Monat nach dem Ende der Roaccutane-Behandlung dürfen Sie kein Blut "
                    "spenden, weil es eine gewisse Zeit dauert, bis in Ihrem Blut kein Roaccutane mehr "
                    "vorhanden ist. ",
                "Wenn Sie noch Roaccutane-Kapseln übrig haben, dürfen Sie diese Kapseln auf keinen Fall "
                    "an andere Personen weitergeben, da andernfalls bei diesen Personen schwere "
                    "gesundheitliche Probleme auftreten könnten. Bringen Sie die restlichen Kapseln wieder "
                    "in der Apotheke zurück. "
              ],
            ),
            BulletList(
              title: "Spezielle Empfehlungen für FRAUEN",
              strings: [
                "Sie müssen nach dem Ende der Roaccutane-Behandlung mindestens einen Monat lang "
                    "weiterhin mindestens eine, vorzugsweise jedoch zwei unterschiedliche wirksame "
                    "Empfängnisverhütungsmethoden anwenden, weil es eine gewisse Zeit dauert, bis "
                    "Roaccutane vollständig aus Ihrem Körper ausgeschieden ist. ",
                "Fünf Wochen nach dem Ende Ihrer Behandlung mit Roaccutane müssen Sie erneut Ihren "
                    "Arzt aufsuchen, um einen letzten Schwangerschaftstest durchführen zu lassen (dieser "
                    "Schwangerschaftstest ist obligatorisch). "
              ],
            ),
            NavBar(
              back: NavigationEvent.FifthPageClickEvent,
              forward: null,
            ),
          ]),
    );
  }
}
