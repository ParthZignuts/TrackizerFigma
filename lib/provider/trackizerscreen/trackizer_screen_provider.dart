import 'package:flutter/cupertino.dart';

class TrackizerScreenProvider extends ChangeNotifier{
  PageController _pageController=PageController();

  PageController get pageController => _pageController;

  set pageController(PageController value) {
    _pageController = value;
  }

  void onTabChanged(int index){
    _pageController.jumpToPage(index);
    notifyListeners();
  }
}