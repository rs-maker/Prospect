import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
part 'checklist_state.dart';

class CheckListCubit extends Cubit<CheckListState> {
  CheckListCubit(int x) : super(CheckListState(size: x));

  void flipCheckMark(int pos) => emit(state.flipCheckMark(pos));
}
