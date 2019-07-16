import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

class CounterBloc extends BlocBase {
  final BehaviorSubject counter = BehaviorSubject<int>.seeded(0);

  int get value => counter.value;
  ValueObservable<int> get stream => counter.stream;
  StreamSink<int> get input => counter.sink;
}
