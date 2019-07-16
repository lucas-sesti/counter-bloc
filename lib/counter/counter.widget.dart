import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:counter/counter/counter.bloc.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterBloc bloc = BlocProvider.getBloc<CounterBloc>();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Counter'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            bloc.input.add(bloc.value + 1);
          },
          child: Icon(Icons.plus_one),
        ),
        body: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                StreamBuilder(
                  stream: bloc.stream,
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    return Text(snapshot.data.toString());
                  },
                ),
                RaisedButton(
                  onPressed: () {
                    bloc.input.add(bloc.value - 1);
                  },
                  child: Icon(Icons.remove),
                )
              ],
            )
          ],
        ));
  }
}
