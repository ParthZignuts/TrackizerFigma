import 'package:flutter/cupertino.dart';

class TrackizerScreenProvider extends ChangeNotifier {
  int tabIndex = 0;

  PageController pageController = PageController();

  void onTabChanged() {
    pageController.jumpToPage(tabIndex);
    notifyListeners();
  }
}
