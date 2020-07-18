import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider_counter.dart';

class CounterSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterValue = context.select((CounterProvider p) => p.countValue);
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
        backgroundColor:
            Colors.primaries[Random().nextInt(Colors.primaries.length)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Text(
              'Value from select $counterValue',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterProvider>().increment();
          context.read<CounterProvider>().random();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
