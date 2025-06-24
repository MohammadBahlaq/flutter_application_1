import 'package:flutter/material.dart';

class CounterController with ChangeNotifier {
  int counter = 0;
  bool counterAbove5 = false;

  void incrementCounter() {
    // counter++;
    // if (counter > 5) counterAbove5 = true;
    notifyListeners();
  }
}
