import 'package:flutter/cupertino.dart';

class TrackizerScreenProvider extends ChangeNotifier {
  int _tabIndex = 0;

  int get tabIndex => _tabIndex;

  set tabIndex(int value) {
    _tabIndex = value;
  }

  PageController _pageController = PageController();

  PageController get pageController => _pageController;

  set pageController(PageController value) {
    _pageController = value;
  }

  void onTabChanged() {
    _pageController.jumpToPage(_tabIndex);
    notifyListeners();
  }
}
