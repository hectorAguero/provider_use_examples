import 'package:flutter/cupertino.dart';

class LoginProvider with ChangeNotifier {
  bool obscurePassword = true;

  void switchObscurePass() {
    obscurePassword = !obscurePassword;
    notifyListeners();
  }
}
