import 'package:flutter/material.dart';
import 'package:prospect/bloc/navigation/navigation_bloc.dart';
import 'package:prospect/pages/layouts/textblock_layout.dart';
import 'layouts/navbar_layout.dart';
import 'layouts/textpage_layout.dart';

class HomePage extends TextPage with NavigationStates {
  final List<Widget> children = [
    TextBlock(
      title: "Prospect",
      content:
          "This Application was created by robert.schauer@tum.de as part of my Clinical Application Project for the Departement of Dermatology at the Klinikum rechts der Isar"
              " in the course of my Bachelor studies.",
      first: false,
    ),
    TextBlock(
      title: "Disclaimer",
      content:
          "All of the information contained in this Application was taken directly from these links: \n\n"
          "https://www.afmps.be/sites/default/files/downloads/Roaccutane%20patient%20DE%20information.pdf \n\n"
          "http://www.bfarm.de/SharedDocs/Downloads/DE/Arzneimittel/Pharmakovigilanz/Service/aktuelles/isotret/documbrosch-isotretinoin.pdf?__blob=publicationFile&v=2 \n\n"
          "I make no guarantees for the correctness of the information contained in this Application",
      first: false,
    ),
    NavBar(back: null, forward: NavigationEvent.FirstPageClickEvent,),
  ];
}
