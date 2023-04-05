import 'package:flutter/cupertino.dart';

class LoginScreenProvider extends ChangeNotifier{
  bool rememberMe = false;

  onRememberMeChanged(bool value){
    rememberMe=value;
    notifyListeners();
  }
}