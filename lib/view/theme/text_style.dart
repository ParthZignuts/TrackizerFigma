import 'package:flutter/material.dart';
import 'package:trackizer/view/theme/app_color.dart';

class TextStyles {
  static const h1Bold = TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
  static const h1Normal = TextStyle(fontSize: 22, fontWeight: FontWeight.normal);
  static const h1BoldWhite = TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.white);
  static const h1BoldWhiteForPrice = TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white);

  static const h2Bold = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const h2NormalWhite = TextStyle(fontSize: 20, fontWeight: FontWeight.normal,color: Colors.white);
  static const h2NormalBlack = TextStyle(fontSize: 20, fontWeight: FontWeight.normal,color: Colors.black);


  static const h3Bold = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  static const h3Normal = TextStyle(fontSize: 18, fontWeight: FontWeight.normal);
  static const h3NormalWhite = TextStyle(fontSize: 18, fontWeight: FontWeight.normal,color: Colors.white);
  static const h3NormalLightWhite = TextStyle(fontSize: 18, fontWeight: FontWeight.normal,color: AppColor.lightWhite);


  static const p1Bold = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  static const p1Normal = TextStyle(fontSize: 16, fontWeight: FontWeight.normal);

  static const p2Bold = TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
  static const p2Normal = TextStyle(fontSize: 14, fontWeight: FontWeight.normal);

  static const p3Bold = TextStyle(fontSize: 12, fontWeight: FontWeight.bold);
  static const p3Normal = TextStyle(fontSize: 12, fontWeight: FontWeight.normal);
}