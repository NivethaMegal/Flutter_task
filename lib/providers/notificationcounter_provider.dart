import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int count = 0;
  //setter method for incrementing count value
  set increment(int value) {
    count = count + value;
  }

  //getter method for getting count value
  int get getCount {
    return count;
  }
}
