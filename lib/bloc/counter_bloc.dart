import 'dart:async';
import 'package:flutter/material.dart';

class CounterBloc {
  int _count = 0;
  final _counterController = StreamController<int>();

  Stream<int> get counterInput => _counterController.stream;

  void changeCounter({@required bool increase}) {
    if (increase)
      _count += 1;
    else
      _count -= 1;
    _counterController.sink.add(_count);
  }

  void dispose() {
    _counterController.close();
  }
}
