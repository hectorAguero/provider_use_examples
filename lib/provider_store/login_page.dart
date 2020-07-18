import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/provider_store/provider_login.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      builder: (context, child) => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(64.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome',
                  style: Theme.of(context).textTheme.headline1,
                  textAlign: TextAlign.center,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: IconButton(
                          onPressed: () =>
                              context.read<LoginProvider>().switchObscurePass(),
                          icon: Icon(Icons.lock_outline))),
                  obscureText: context.watch<LoginProvider>().obscurePassword,
                ),
                SizedBox(
                  height: 24,
                ),
                RaisedButton(
                  color: Colors.yellow,
                  child: Text('ENTER'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, 'catalog');
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
