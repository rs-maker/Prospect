import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {

  String _title = 'Medikamente';
  String get title => _title;

  void updateTitle() {
    _title = "LOL";
    notifyListeners();
  }

  Future navigateToRoaccutane() async {
  }
}
