import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider_counter.dart';

class CounterWatchLocalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      builder: (context, child) {
        final counterProv = context.watch<CounterProvider>();
        return Scaffold(
          appBar: AppBar(
            title: Text('Provider Consumer Page'),
            backgroundColor:
                Colors.primaries[Random().nextInt(Colors.primaries.length)],
            centerTitle: true,
          ),
          body: Container(
            color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)],
                  child: Text('Watch, count => ${counterProv.countValue}',
                      style: Theme.of(context).textTheme.headline6),
                ),
                Text('Consumer, random => ${counterProv.randomValue}',
                    style: Theme.of(context).textTheme.headline6),
                Container(
                  padding: EdgeInsets.all(32),
                  height: 300,
                  child: Text(
                      'This page have a Scaffold these Widgets\n\n1. Appbar that change the background color with every rebuild of the widget\n2. A text that show the count value from the CounterProvider, and have a background color with changes with every rebuild of the widget.\n3. A Text that show a randomNumber from the CounterProvider in String.\n4. This Text list inside a Container.\n6. A FloatingActionButton that call method increment that increment the countValue.\n6. A FloatingActionButton that call method random that change the randomValue.'),
                )
              ],
            ),
          ),
          floatingActionButton: Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  heroTag: 'increment',
                  onPressed: () {
                    context.read<CounterProvider>().increment();
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(height: 16),
                FloatingActionButton(
                  heroTag: 'randomFab',
                  onPressed: () => context.read<CounterProvider>().random(),
                  child: Text('?', style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
