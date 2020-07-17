import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/counter_watch_select/provider_counter.dart';

class CounterSelectorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Selector<CounterProvider, int>(
              selector: (_, foo) => foo.counterValue,
              builder: (_, data, __) {
                return Text(
                  'Data from selector $data',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            // https://pub.dev/packages/tuple
            // Selector<CounterProvider, Tuple2<int, String>>(
            //     selector: (_, foo) =>
            //         Tuple2(foo.counterValue, foo.counterString),
            //     builder: (_, data, __) {
            //       return Text('${data.}  ${data.item2}');
            //     },),
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
