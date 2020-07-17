import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/counter_watch_select/provider_counter.dart';

class CounterWatchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProv = context.watch<CounterProvider>();
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
              'Value from select ${counterProv.counterValue}',
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
