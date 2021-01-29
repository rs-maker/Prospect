import 'dart:collection';
import 'package:flutter/material.dart';

class CheckList extends StatefulWidget {
  const CheckList({Key key}) : super(key: key);

  @override
  CheckListState createState() => CheckListState();
}

class CheckListState extends State<CheckList> {
  LinkedHashMap<int, bool> _checkmarks = initialiseMap(8);

  bool getcheckMark(int n) => _checkmarks[n];

  void flipcheckMark(int n) => _checkmarks[n] = !_checkmarks[n];
  bool any = false;

  @override
  void setState(fn) {
    super.setState(fn);
    any = getAny();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).dividerColor,
      child: Column(
        children: [
          Checkbox(value: _checkmarks[0], onChanged: (value) {}),
          Checkbox(value: _checkmarks[1], onChanged: (value) {}),
          Checkbox(value: _checkmarks[2], onChanged: (value) {}),
          Checkbox(value: _checkmarks[3], onChanged: (value) {}),
          Checkbox(value: _checkmarks[4], onChanged: (value) {}),
          Checkbox(value: _checkmarks[5], onChanged: (value) {}),
          Checkbox(value: _checkmarks[6], onChanged: (value) {}),
          Checkbox(value: _checkmarks[7], onChanged: (value) {}),
          Checkbox(value: any, onChanged: (value) {}),
        ],
      ),
    );
  }

  bool getAny() {
    bool ret = true;
    _checkmarks.forEach((key, value) {
      ret = ret && value;
    });
    return ret;
  }

  static Map<int, bool> initialiseMap(int num) {
    LinkedHashMap<int, bool> map = new LinkedHashMap();
    for (int i = 0; i < num; i++) {
      map.putIfAbsent(i, () => false);
    }
    return map;
  }
}
