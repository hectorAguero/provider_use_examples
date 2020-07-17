import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider_counter.dart';

class CounterSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterValue = context.select((CounterProvider p) => p.counterValue);
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
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
        onPressed: () => context.read<CounterProvider>().increment(),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
