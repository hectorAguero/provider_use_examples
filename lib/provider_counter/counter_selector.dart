import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider_counter/provider_counter.dart';

class CounterSelectorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.primaries[Random().nextInt(Colors.primaries.length)],
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Selector<CounterProvider, int>(
              selector: (_, foo) => foo.countValue,
              builder: (_, data, __) {
                return Text(
                  'Data from selector $data',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
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
