import 'dart:collection';

import 'package:flutter/material.dart';

class CheckList extends StatefulWidget {
  const CheckList({Key key}) : super(key: key);

  @override
  CheckListState createState() => CheckListState();
}

class CheckListState extends State<CheckList> {
  LinkedHashMap<int, bool> checkmarks = initialiseMap(4);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).dividerColor,
      child: Column(
        children: [
          Checkbox(value: checkmarks[0], onChanged: (value) {}),
          Checkbox(value: checkmarks[1], onChanged: (value) {}),
          Checkbox(value: checkmarks[2], onChanged: (value) {}),
          Checkbox(value: checkmarks[3], onChanged: (value) {}),
        ],
      ),
    );
  }
  static Map<int,bool> initialiseMap(int num){
    LinkedHashMap<int,bool> map =  new LinkedHashMap();
    for(int i = 0; i < num; i++){
      map.putIfAbsent(i, () => false);
    }
    return map;
  }
}
