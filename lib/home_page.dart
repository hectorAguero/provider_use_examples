import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _scheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Use Examples'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: double.infinity),
              Divider(indent: 32, endIndent: 32),
              MaterialButton(
                minWidth: 180,
                color: _scheme.primary,
                textColor: _scheme.onPrimary,
                onPressed: () =>
                    Navigator.pushNamed(context, 'counterConsumer'),
                child: Text('Counter Consumer'),
              ),
              Divider(indent: 32, endIndent: 32),
              MaterialButton(
                minWidth: 180,
                color: _scheme.primary,
                textColor: _scheme.onPrimary,
                onPressed: () => Navigator.pushNamed(context, 'counterWatch'),
                child: Text('Counter Watch'),
              ),
              Divider(indent: 32, endIndent: 32),
              MaterialButton(
                minWidth: 180,
                color: _scheme.primary,
                textColor: _scheme.onPrimary,
                onPressed: () => Navigator.pushNamed(context, 'counterLocal'),
                child: Text('Counter Watch Local'),
              ),
              Divider(indent: 32, endIndent: 32),
              MaterialButton(
                minWidth: 180,
                color: _scheme.primary,
                textColor: _scheme.onPrimary,
                onPressed: () => Navigator.pushNamed(context, 'counterSelect'),
                child: Text('Counter Select'),
              ),
              Divider(indent: 32, endIndent: 32),
              MaterialButton(
                minWidth: 180,
                color: _scheme.primary,
                textColor: _scheme.onPrimary,
                onPressed: () =>
                    Navigator.pushNamed(context, 'counterSelector'),
                child: Text('Counter Selector'),
              ),
              Divider(indent: 32, endIndent: 32),
              MaterialButton(
                minWidth: 180,
                color: _scheme.primary,
                textColor: _scheme.onPrimary,
                onPressed: () => Navigator.pushNamed(context, 'login'),
                child: Text('Store Example'),
              ),
              Divider(indent: 32, endIndent: 32),
            ],
          ),
        ),
      ),
    );
  }
}
