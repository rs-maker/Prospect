part of 'checklist_cubit.dart';

class CheckListState {
  int size;
  List<bool> checkmarks;

  // some questions are only relevant for childbearing patients
  bool childbearing = true;

  CheckListState({@required this.size}) : this.checkmarks = initialiseMap(size);

  CheckListState.fromold(CheckListState checkListState) {
    this.size = checkListState.checkmarks.length;
    this.checkmarks = checkListState.checkmarks;
    this.childbearing = checkListState.childbearing;
  }

  CheckListState assignGender(bool xy) {
    this.childbearing = xy;
    return CheckListState.fromold(this);
  }

  CheckListState flipCheckMark(int pos) {
    checkmarks[pos] = !checkmarks[pos];
    return CheckListState.fromold(this);
  }

  CheckListState setCheckList(String code) {
    this.checkmarks = _listFromCode(code);
    return CheckListState.fromold(this);
  }

  static List<bool> initialiseMap(int num) {
    List<bool> list = [];
    for (int i = 0; i < num; i++) {
      list.add(false);
    }
    return list;
  }

  String getCode() {
    int code = 0;
    for (int i = 0; i < size; i++) {
      if (checkmarks[i]) code += pow(2, i);
    }
    return code.toRadixString(16);
  }
  bool getFinal(){
    bool result = true;
    if(childbearing){
      for(int i = 0; i < 13; i++){
        result = checkmarks[i] && result;
      }
    }else{
      result = checkmarks[0] && checkmarks[2] && checkmarks[3] && checkmarks[7] && checkmarks[8] && checkmarks[12];
    }
    return result;
  }

  List<bool> _listFromCode(String code) {
    int num = int.tryParse(code, radix: 16);
    List<bool> result = [];
    while (num > 0) {
      result.add(num % 2 == 1);
      num = (num / 2).floor();
    }
    if (result.length < size)
      result = result + List.generate(size - result.length, (index) => false);
    return result;
  }
}
