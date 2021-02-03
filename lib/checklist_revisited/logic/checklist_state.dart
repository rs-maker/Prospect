part of 'checklist_cubit.dart';

class CheckListState {
  int size;
  List<bool> checkmarks;

  CheckListState({@required this.size}) : this.checkmarks = initialiseMap(size);

  CheckListState.fromold(List<bool> list){
    this.size = list.length;
    this.checkmarks = list;
  }

  CheckListState flipCheckMark(int pos) {
    checkmarks[pos] = !checkmarks[pos];
    return CheckListState.fromold(checkmarks);
  }

  static List<bool> initialiseMap(int num) {
    List<bool> list = [];
    for (int i = 0; i < num; i++) {
      list.add(false);
    }
    return list;
  }
}
