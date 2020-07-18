import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int countValue;
  int randomValue;

  CounterProvider() {
    countValue = 0;
    randomValue = 1;
    random();
  }

  void increment() {
    countValue += 1;
    notifyListeners();
  }

  void random() {
    randomValue = Random().nextInt(999);
    notifyListeners();
  }
}
