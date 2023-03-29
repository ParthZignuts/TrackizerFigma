import 'package:flutter/cupertino.dart';

class HomeScreenProvider extends ChangeNotifier {
  int _groupValue = 0;
  int _navigationIndex = 0;

  int get navigationIndex => _navigationIndex;

  set navigationIndex(int value) {
    _navigationIndex = value;
  }

  int get groupValue => _groupValue;

  set groupValue(int value) {
    _groupValue = value;
  }

  void changeGroupValue(int value) {
    _groupValue = value;
    notifyListeners();
  }

  void onNavigationItemTaped(int index) {
    _navigationIndex = index;
    notifyListeners();
  }
}
