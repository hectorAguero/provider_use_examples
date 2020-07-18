import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/home_page.dart';

import 'provider_counter/counter_watch_local.dart';
import 'provider_counter/counter_consumer.dart';
import 'provider_counter/counter_select.dart';
import 'provider_counter/counter_selector.dart';
import 'provider_counter/counter_watch.dart';
import 'provider_counter/provider_counter.dart';
import 'provider_store/cart_page.dart';
import 'provider_store/catalog_page.dart';
import 'provider_store/login_page.dart';
import 'provider_store/provider_cart.dart';
import 'provider_store/provider_catalog.dart';

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
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: 'homePage',
      debugShowCheckedModeBanner: false,
      routes: {
        'homePage': (context) => HomePage(),
        'counterWatch': (context) => CounterWatchPage(),
        'counterLocal': (context) => CounterWatchLocalPage(),
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
