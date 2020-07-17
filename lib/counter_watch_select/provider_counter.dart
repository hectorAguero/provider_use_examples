import 'package:flutter/foundation.dart';

class CounterProvider with ChangeNotifier {
  int counterValue = 0;
  String counterString = '0';
  void increment() {
    counterValue += 1;
    notifyListeners();
  }
}
