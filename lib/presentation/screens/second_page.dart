import 'package:flutter/cupertino.dart';
import 'package:prospect/presentation/router/navigation_bloc.dart';
import 'layouts/navbar_layout.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          children: [
            RichText(text: TextSpan(text: "Missbildungen beim ungeborenen Kind\n", style: Theme.of(context).textTheme.headline1, children: [
              TextSpan(
                text: "Kein Arzneimittel ist vollständig frei von unerwünschten Wirkungen. Die schwerwiegendste "
                    "Nebenwirkung, die Sie während der Einnahme von Roaccutane riskieren, sind schwere "
                    " Missbildungen beim ungeborenen Kind, wenn Sie während der Roaccutane-Behandlung "
                    "oder im ersten Monat nach dem Ende der Behandlung schwanger werden. \n",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            TextSpan(text: "Für männliche Patienten ist anzumerken: "
                "Klinische Studien haben gezeigt, dass eine Behandlung mit Roaccutane keinen Einfluss auf "
                "die Bildung und Qualität des Spermas hat. Es besteht somit keinerlei Anlass zu der Sorge, "
                "dass die Roaccutane-Behandlung Ihre Fähigkeit beeinträchtigen könnte, gesunde Kinder zu "
                "zeugen.\n", style: Theme.of(context).textTheme.bodyText1),]
            ),),
            NavBar(
              back: NavigationEvent.OnePointOneClickEvent,
              forward: NavigationEvent.TwoPointTwoClickEvent,
            ),
          ]),
    );
  }
}
