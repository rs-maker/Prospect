import 'package:flutter/material.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';
import 'package:prospect/pages/layouts/bulletlist_layout.dart';
import 'package:prospect/pages/layouts/textpage_layout.dart';

import 'layouts/textblock_layout.dart';

class FifthPage extends TextPage with NavigationStates {
  final List<Widget> children = [
    TextBlock(
      title: "Allgemeine Empfehlungen zur Einnahme von Roaccutane",
      content:
          "Wie bei allen verschreibungspflichtigen Arzneimitteln ist es unbedingt erforderlich, dass Sie"
          "sich streng an die Anweisungen halten, die Ihnen der Arzt zur Einnahme von Roaccutane"
          "gegeben hat. Auf keinen Fall dürfen Sie das Arzneimittel einer anderen Person geben - auch"
          "dann nicht, wenn Sie den Eindruck haben, dass diese Person dieselben Symptome hat wie"
          "Sie. ",
      first: true,
    ),
    Padding(padding: const EdgeInsets.only(bottom: 20)),
    BulletList(
      title: "Wie sollten Sie Roaccutane einnehmen?",
      strings: [
        "Die Roaccutane-Dosierung, die Ihnen verschrieben wurde (d. h. die Zahl der Kapseln, die"
            "Sie einnehmen müssen), wurde speziell für Ihren persönlichen Bedarf ermittelt und kann"
            "im Laufe der Behandlung vom Arzt geändert werden. Veränderen Sie Ihre Dosierung"
            "nicht eigenmächtig, sondern nur dann, wenn Sie dazu vom Arzt aufgefordert werden. ",
        "Roaccutane wird in der Regel ein- oder zweimal täglich eingenommen (während der"
            "Mahlzeiten). Ihr Arzt kann Ihnen jedoch auch andere Anweisungen geben, die Sie dann"
            "genau befolgen müssen. ",
        "Wenn Sie eine Dosis vergessen haben, holen Sie die Einnahme dieser Dosis so rasch wie"
            "möglich nach. Wenn jedoch die Zeit für die Einnahme der nächsten Dosis fast gekommen"
            "ist, lassen Sie die vergessene Dosis aus, und setzten Sie die Behandlung wie vorher fort."
            "Sie dürfen nicht die doppelte Dosis einnehmen. ",
        "Sie müssen Ihren Arzt zu den vorgesehenen Terminen aufsuchen, damit gewährleistet ist,"
            "dass Ihre Behandlung möglichst optimal verläuft. In manchen Fällen kann Roaccutane"
            "Nebenwirkungen verursachen, die durch Blutuntersuchungen nachgewiesen werden. Aus"
            "diesem Grunde wird Ihnen der Arzt bei manchen Terminen eine Blutprobe entnehmen. "
      ],
    ),
    BulletList(
      title: "Spezielle Empfehlungen für Frauen",
      strings: [
        "Jedes Rezept für Roaccutane reicht für eine Behandlungsdauer von jeweils höchstens"
            "einem Monat. Aus diesem Grunde müssen weibliche Patienten jeden Monat den Arzt"
            "aufsuchen, um sich ein neues Rezept für Roaccutane ausstellen zu lassen und um mit"
            "dem Arzt über die Empfängnisverhütung sowie eventuelle unerwünschte Wirkungen zu"
            "sprechen.",
        "Bitte vergessen Sie nicht, das Arzneimittel innerhalb von sieben Tagen nach Ausstellung"
            "des Rezepts in der Apotheke abzuholen. Nach Ablauf dieser siebentägigen Frist darf"
            "Ihnen die Apotheke das verordnete Roaccutane nicht mehr aushändigen. ",
      ],
    ),
    BulletList(
      title: "Spezielle Empfehlungen für Männer",
      strings: [
        "Die Abgabe von Roaccutane an männliche Patienten ist nicht auf eine einmonatige"
            "Behandlung beschränkt. "
      ],
    )
  ];
}
