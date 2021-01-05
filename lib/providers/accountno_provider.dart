import 'package:flutter/material.dart';

class AccNoList with ChangeNotifier {
  List<dynamic> accList = ['1234567890'];
  //setter method for set Account value
  set addAccNo(String value) {
    accList.add(value);
  }

  //getter method for getting Account List
  List<dynamic> get list {
    return accList;
  }
}
