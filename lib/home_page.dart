import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Ejemplos'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity),
          RaisedButton(
            onPressed: () => Navigator.pushNamed(context, 'counterWatch'),
            child: Text('Counter Watch'),
          ),
          RaisedButton(
            onPressed: () => Navigator.pushNamed(context, 'counterConsumer'),
            child: Text('Counter Consumer'),
          ),
          RaisedButton(
            onPressed: () => Navigator.pushNamed(context, 'counterSelect'),
            child: Text('Counter Select'),
          ),
          RaisedButton(
            onPressed: () => Navigator.pushNamed(context, 'counterSelector'),
            child: Text('Counter Selector'),
          ),
          RaisedButton(
            onPressed: () => Navigator.pushNamed(context, 'login'),
            child: Text('Cart Example'),
          )
        ],
      ),
    );
  }
}
