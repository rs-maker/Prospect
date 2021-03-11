import 'package:flutter/material.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';
import 'package:prospect/pages/layouts/textblock_layout.dart';
import 'layouts/navbar_layout.dart';
import 'layouts/textpage_layout.dart';

class HomePage extends TextPage with NavigationStates {
  final List<Widget> children = [
    TextBlock(
      title: "Prospekt",
      content:
          "Diese App wurde von robet.schauer@tum.de für sein klinisches Anwendungsprojekt für den Lehrstuhl für Dermatologie am Klinikum rechts der Isar erstellt.",
      titleSize: 34,
      contentSize: 24,
    ),
    TextBlock(
      title: "Disclaimer",
      content:
          "Die Informationen die in dieser Applikation enthalten sind wurden direkt aus diesen Links entnommen: \n\n"
          "https://www.afmps.be/sites/default/files/downloads/Roaccutane%20patient%20DE%20information.pdf \n\n"
          "http://www.bfarm.de/SharedDocs/Downloads/DE/Arzneimittel/Pharmakovigilanz/Service/aktuelles/isotret/documbrosch-isotretinoin.pdf?__blob=publicationFile&v=2 \n\n",
      titleSize: 30,
      contentSize: 24,
    ),
    NavBar(
      back: null,
      forward: NavigationEvent.FirstPageClickEvent,
    ),
  ];
}
