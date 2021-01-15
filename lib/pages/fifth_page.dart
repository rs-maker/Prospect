import 'package:flutter/material.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';
import 'package:prospect/pages/layouts/bulletlist_layout.dart';
import 'package:prospect/pages/layouts/textpage_layout.dart';

import 'layouts/navbar_layout.dart';
import 'layouts/textblock_layout.dart';

class FifthPage extends TextPage with NavigationStates {
  final List<Widget> children = [
    TextBlock(
      title: "Allgemeine Empfehlungen zur Einnahme von Roaccutane",
      content:
          "Wie bei allen verschreibungspflichtigen Arzneimitteln ist es unbedingt erforderlich, dass Sie "
          "sich streng an die Anweisungen halten, die Ihnen der Arzt zur Einnahme von Roaccutane "
          "gegeben hat. Auf keinen Fall dürfen Sie das Arzneimittel einer anderen Person geben - auch "
          "dann nicht, wenn Sie den Eindruck haben, dass diese Person dieselben Symptome hat wie "
          "Sie. ",
      first: true,
    ),
    Padding(padding: const EdgeInsets.only(bottom: 20)),
    BulletList(
      title: "Wie sollten Sie Roaccutane einnehmen?",
      strings: [
        "Die Roaccutane-Dosierung, die Ihnen verschrieben wurde (d. h. die Zahl der Kapseln, die "
            "Sie einnehmen müssen), wurde speziell für Ihren persönlichen Bedarf ermittelt und kann "
            "im Laufe der Behandlung vom Arzt geändert werden. Veränderen Sie Ihre Dosierung "
            "nicht eigenmächtig, sondern nur dann, wenn Sie dazu vom Arzt aufgefordert werden. ",
        "Roaccutane wird in der Regel ein- oder zweimal täglich eingenommen (während der "
            "Mahlzeiten). Ihr Arzt kann Ihnen jedoch auch andere Anweisungen geben, die Sie dann "
            "genau befolgen müssen. ",
        "Wenn Sie eine Dosis vergessen haben, holen Sie die Einnahme dieser Dosis so rasch wie "
            "möglich nach. Wenn jedoch die Zeit für die Einnahme der nächsten Dosis fast gekommen "
            "ist, lassen Sie die vergessene Dosis aus, und setzten Sie die Behandlung wie vorher fort. "
            "Sie dürfen nicht die doppelte Dosis einnehmen. ",
        "Sie müssen Ihren Arzt zu den vorgesehenen Terminen aufsuchen, damit gewährleistet ist, "
            "dass Ihre Behandlung möglichst optimal verläuft. In manchen Fällen kann Roaccutane "
            "Nebenwirkungen verursachen, die durch Blutuntersuchungen nachgewiesen werden. Aus "
            "diesem Grunde wird Ihnen der Arzt bei manchen Terminen eine Blutprobe entnehmen. "
      ],
    ),
    BulletList(
      title: "Spezielle Empfehlungen für Frauen",
      strings: [
        "Jedes Rezept für Roaccutane reicht für eine Behandlungsdauer von jeweils höchstens "
            "einem Monat. Aus diesem Grunde müssen weibliche Patienten jeden Monat den Arzt "
            "aufsuchen, um sich ein neues Rezept für Roaccutane ausstellen zu lassen und um mit "
            "dem Arzt über die Empfängnisverhütung sowie eventuelle unerwünschte Wirkungen zu"
            "sprechen.",
        "Bitte vergessen Sie nicht, das Arzneimittel innerhalb von sieben Tagen nach Ausstellung"
            "des Rezepts in der Apotheke abzuholen. Nach Ablauf dieser siebentägigen Frist darf "
            "Ihnen die Apotheke das verordnete Roaccutane nicht mehr aushändigen. ",
      ],
    ),
    BulletList(
      title: "Spezielle Empfehlungen für Männer",
      strings: [
        "Die Abgabe von Roaccutane an männliche Patienten ist nicht auf eine einmonatige "
            "Behandlung beschränkt. "
      ],
    ),
    BulletList(
      title: "Was müssen männliche und weibliche "
          "Patienten während der Behandlung mit "
          "Roaccutane beachten?",
      strings: [
        "Während der Behandlung mit Roaccutane sowie einen Monat nach dem Ende der "
            "Behandlung dürfen Sie kein Blut spenden. Wenn eine schwangere Frau Ihre Blutspende "
            "erhält, besteht das Risiko, dass ihr Kind mit schweren Missbildungen zur Welt kommt.",
        "Verwenden Sie kein Vitamin A als Nahrungsergänzungsmittel. Der in Roaccutane "
            "enthaltene Wirkstoff ist chemisch mit dem Vitamin A verwandt; die gleichzeitige "
            "Einnahme von Roaccutane und Vitamin A erhöht das Risiko von unerwünschten "
            "Wirkungen. ",
        "Während der Behandlung mit Roaccutane sowie einen Monat nach dem Ende der"
            "Behandlung dürfen Sie keine kosmetische Behandlung zur Glättung Ihrer Haut "
            "durchführen (beispielsweise Wachsbehandlungen zur Haarentfernung, aggressive "
            "Dermabrasionen oder Laser-Behandlungen). Roaccutane kann nach derartigen "
            "kosmetischen Verfahren das Risiko von Narbenbildungen erhöhen. Fragen Sie den Arzt, "
            "ab wann Sie wieder kosmetische Behandlungen erhalten bzw. durchführen können.",
        "Meiden Sie Sonnenlicht und UV-Strahlen nach Möglichkeit vollständig. In Solarien "
            "werden ultraviolette Strahlen verwendet. Die Einnahme von Roaccutane kann zur Folge "
            "haben, dass die Lichtempfindlichkeit Ihrer Haut zunimmt. ",
        "Fragen Sie Ihren Arzt, wenn Sie vorhaben, weitere Arzneimittel oder pflanzliche "
            "Präparate einzunehmen. Dies gilt besonders für Frauen, welche die Anti-Baby-Pille oder "
            "andere hormonelle Verhütungsmittel verwenden. Manche Arzneimittel und pflanzlichen "
            "Präparate können die Wirksamkeit von Verhütungsmitteln abschwächen. ",
        "Teilen Sie Roaccutane nicht mit anderen Personen. Roaccutane ist ein Arzneimittel, dass "
            "zu schweren Missbildungen beim ungeborenen Kind und zu anderen schwerwiegenden "
            "gesundheitlichen Problemen führen kann. ",
        " Sie dürfen Roaccutane nicht gleichzeitig mit Antibiotika verwenden, ohne dies vorher "
            "mit Ihrem Arzt besprochen zu haben. Unter Umständen müssen Sie die Einnahme von "
            "Roaccutane so lange unterbrechen, bis die Antibiotika-Behandlung beendet ist. Die "
            "gleichzeitige Verwendung von Roaccutane und Antibiotika kann das Risiko von "
            "Nebenwirkungen erhöhen. ",
      ],
    ),
    BulletList(
      title: "Spezielle Empfehlungen für Frauen",
      strings: [
        "Während der Behandlung mit Roaccutane dürfen Sie nicht schwanger werden.",
        "Während der Behandlung mit Roaccutane dürfen Sie Ihr Kind nicht stillen, da die"
            "Möglichkeit besteht, dass Roaccutane in die Muttermilch übertritt und auf diese Weise"
            "Ihr Kind schädigen kann. "
      ],
    ),
    BulletList(
      title: "Wann dürfen Sie Roaccutane nicht einnehmen? ",
      strings: [
        "Sie dürfen Roaccutane nicht verwenden, wenn Sie nicht sämtliche potentielle Risiken gut "
            "verstanden haben und wenn Sie nicht bereit sind, sämtliche Anweisungen zu befolgen, "
            "die Sie von Ihrem Arzt erhalten haben und die in dieser Informationsbroschüre enthalten "
            "sind. ",
        "Sprechen Sie mit Ihrem Arzt, wenn Sie selber oder eine andere Person aus Ihrer Familie "
            "früher einmal seelische Probleme (gleichgültig, welcher Art), Asthma, "
            "Lebererkrankungen, Diabetes mellitus (Zuckerkrankheit), Herzkrankheiten oder andere "
            "ernste gesundheitliche Probleme hatten. Außerdem müssen Sie den Arzt informieren, "
            "wenn Sie an Lebensmittel- oder Arzneimittelallergien leiden. Der Arzt benötigt diese "
            "Informationen unbedingt, um feststellen zu können, ob in Ihrem speziellen Fall eine "
            "Roaccutane-Behandlung geeignet ist. "
      ],
    ),
    NavBar(back: NavigationEvent.FourthPageClickEvent, forward: NavigationEvent.SixthPageClickEvent,),
  ];
}
