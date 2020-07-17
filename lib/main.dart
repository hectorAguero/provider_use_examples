import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/home_page.dart';
import 'package:provider_example/store_example/cart_page.dart';
import 'package:provider_example/store_example/provider_cart.dart';
import 'package:provider_example/store_example/provider_catalog.dart';

import 'counter_watch_select/counter_consumer.dart';
import 'counter_watch_select/counter_select.dart';
import 'counter_watch_select/counter_selector.dart';
import 'counter_watch_select/counter_watch.dart';
import 'counter_watch_select/provider_counter.dart';
import 'store_example/catalog_page.dart';
import 'store_example/login_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // In this sample app, CatalogModel never changes, so a simple Provider
        // is sufficient.
        Provider(create: (context) => CatalogProvider()),
        // CartModel is implemented as a ChangeNotifier, which calls for the use
        // of ChangeNotifierProvider. Moreover, CartModel depends
        // on CatalogModel, so a ProxyProvider is needed.
        ChangeNotifierProxyProvider<CatalogProvider, CartProvider>(
          create: (context) => CartProvider(),
          update: (context, catalog, cart) {
            cart.catalog = catalog;
            return cart;
          },
        ),
        ChangeNotifierProvider(create: (context) => CounterProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'homePage',
      routes: {
        'homePage': (context) => HomePage(),
        'counterWatch': (context) => CounterWatchPage(),
        'counterConsumer': (context) => CounterConsumerPage(),
        'counterSelect': (context) => CounterSelectPage(),
        'counterSelector': (context) => CounterSelectorPage(),
        'login': (context) => LoginPage(),
        'catalog': (context) => CatalogPage(),
        'cart': (context) => CartPage(),
      },
    );
  }
}
