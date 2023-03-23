import 'package:flutter/material.dart';

class proclass extends ChangeNotifier {
  int a = 0;
  String val = "";

  void decre() {
    a--;
    notifyListeners();
  }

  void incre() {
    a++;
    notifyListeners();
  }

  passvalue(String a) {
    val = a;
    notifyListeners();
  }
}
