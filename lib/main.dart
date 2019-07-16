import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:counter/counter/counter.widget.dart';
import 'package:flutter/material.dart';

import 'counter/counter.bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      blocs: [
        Bloc((i) => CounterBloc()),
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (BuildContext context) => CounterWidget(),
        },
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}
