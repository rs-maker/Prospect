part of 'checklist_cubit.dart';

class CheckListState {
  int size;
  List<bool> checkmarks;
  // some questions are only relevant for childbearing patients
  bool childbearing = true;

  CheckListState({@required this.size}) : this.checkmarks = initialiseMap(size);

  CheckListState.fromold(CheckListState checkListState){
    this.size = checkListState.checkmarks.length;
    this.checkmarks = checkListState.checkmarks;
    this.childbearing = checkListState.childbearing;
  }

  CheckListState assignGender(bool xy){
    this.childbearing = xy;
    return CheckListState.fromold(this);
  }

  CheckListState flipCheckMark(int pos) {
    checkmarks[pos] = !checkmarks[pos];
    return CheckListState.fromold(this);
  }

  static List<bool> initialiseMap(int num) {
    List<bool> list = [];
    for (int i = 0; i < num; i++) {
      list.add(false);
    }
    return list;
  }
}
