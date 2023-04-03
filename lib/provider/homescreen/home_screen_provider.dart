import 'package:flutter/cupertino.dart';

class HomeScreenProvider extends ChangeNotifier {
  int groupValue = 0;
  void changeGroupValue(int value) {
    groupValue = value;
    notifyListeners();
  }
}
