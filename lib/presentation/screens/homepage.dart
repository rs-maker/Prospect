import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:prospect/presentation/router/navigation_bloc.dart';
import 'widgets/navbar_layout.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          children: [
            RichText(
              text: TextSpan(
                text: "Prospekt\n",
                style: Theme.of(context).textTheme.headline1,
                children: <InlineSpan>[
                  TextSpan(
                    text:
                        "Diese App wurde von robert.schauer@tum.de für das klinisches Anwendungsprojekt für den Lehrstuhl für Dermatologie am Klinikum rechts der Isar erstellt.\n",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  TextSpan(text: "Disclaimer"),
                  TextSpan(
                    text:
                        "\nDie Informationen die in dieser Applikation enthalten sind wurden direkt aus diesen Links entnommen: \n\n",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  TextSpan(
                      text:
                          "Patienten Informationen \n\n",
                      style: Theme.of(context).textTheme.bodyText2,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => {
                              launch(
                                  'https://www.afmps.be/sites/default/files/downloads/Roaccutane%20patient%20DE%20information.pdf')
                            }),
                  TextSpan(
                    text:
                        "Dokumentationsbroschüre \n\n",
                    style: Theme.of(context).textTheme.bodyText2,
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => {
                            launch(
                                'http://www.bfarm.de/SharedDocs/Downloads/DE/Arzneimittel/Pharmakovigilanz/Service/aktuelles/isotret/documbrosch-isotretinoin.pdf?__blob=publicationFile&v=2')
                          },
                  ),
                  TextSpan(
                      text:
                          "Diese App enthält wichtige Information über Roaccutane sowie Empfehlungen, welche "
                          "die Bereitschaft der Patienten erhöhen, die Behandlung korrekt durchzuführen. Sie sollten "
                          "die Informationen aufmerksam durchlesen, bevor Sie mit der Einnahme von Roaccutane "
                          "beginnen. Diese Applikation stellt jedoch keinen Ersatz für Anweisungen dar, die Sie von "
                          "Ihrem Arzt oder Apotheker erhalten. Sollten Sie nach dem Lesen dieser Broschüre noch "
                          "Fragen oder Bedenken bezüglich der Einnahme von Roaccutane haben, zögern Sie bitte "
                          "nicht, mit Ihrem Arzt darüber zu sprechen",
                      style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
            ),
            NavBar(
              back: null,
              forward: NavigationEvent.FirstPageClickEvent,
            ),
          ]),
    );
  }
}
