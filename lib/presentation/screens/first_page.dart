import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prospect/presentation/router/navigation_bloc.dart';
import 'widgets/navbar_layout.dart';

class IntroPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          children: [
            RichText(
                text: TextSpan(
              text: "Weshalb wurde mir Roaccutane verschrieben?\n",
              style: Theme.of(context).textTheme.headline1,
              children: <InlineSpan>[
                TextSpan(
                    text:
                        "Roaccutane wird bei schweren Formen der Akne angewendet (beispielsweise bei Akne mit Knotenbildung, Akne conglobata oder Akne mit dem Risiko einer dauerhaften Narbenbildung), "
                        "die sich trotz Anwendung anderer Akne-Behandlungen, einschließlich der Therapie mit Antibiotika zum Einnehmen, nicht gebessert haben. Der Wirkstoff von Roaccutane – Isotretinoin - wirkt,"
                        " indem er die Bildung von Talg unterdrückt (siehe unten) und die Entzündung der Haut lindert. Roaccutane wird seit vielen Jahren von Millionen von Patienten auf der ganzen Welt verwendet."
                        " Ärzte betrachten Roaccutane als eines der wirksamsten Arzneimittel zur Behandlung von schweren Akneformen, die ihnen zur Verfügung stehen. Sie müssen jedoch "
                        "unbedingt zur Kenntnis nehmen, dass Roaccutane schwere Nebenwirkungen verursachen kann. Bevor Sie sich für eine Behandlung mit Roaccutane entscheiden, "
                        "müssen Sie mit Ihrem Arzt sprechen, damit der Schweregrad Ihrer Akne und die potentiellen Vorteile einer Roaccutane-Behandlung festgestellt werden können. "
                        "Sie müssen unbedingt wissen, wie Sie Roaccutane korrekt anwenden und womit Sie während der Behandlung rechnen müssen. ",
                    style: Theme.of(context).textTheme.bodyText1),
              ],
            )),
            NavBar(
                back: NavigationEvent.HomePageClickEvent,
                forward: NavigationEvent.OnePointOneClickEvent),
          ]),
    );
  }
}
