import 'package:prospect/bloc/navigation/navigation_bloc.dart';
import 'package:prospect/pages/layouts/TextBlockLayout.dart';
import 'layouts/texpage_layout.dart';

class HomePage extends TextPage with NavigationStates {
  final TextBlock textBlock0 = TextBlock(title: "TEST", content: "TEST", first: false,);
  final TextBlock textBlock1 = TextBlock(title: "TEST", content: "TEST", first: false,);
}
