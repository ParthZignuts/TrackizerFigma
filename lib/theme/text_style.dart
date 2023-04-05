import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_color.dart';

class TextStyles {
  static final  h1BoldWhiteTitle = TextStyle(fontSize: 40.sp, fontWeight: FontWeight.bold,color: Colors.white);
  static final h1BoldWhiteForPrice = TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold,color: Colors.white);

  static final h1Bold = TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold);
  static final h1Normal = TextStyle(fontSize: 22.sp, fontWeight: FontWeight.normal);
  static final h1BoldWhite = TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold,color: Colors.white);


  static final h2BoldWhite = TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold,color: AppColor.white);
  static final h2NormalWhite = TextStyle(fontSize: 15.sp, fontWeight: FontWeight.normal,color: Colors.white);
  static final h2NormalGreyTitle = TextStyle(fontSize: 20.sp, fontWeight: FontWeight.normal,color:AppColor.lightWhiteTitle);
  static final h2NormalBlack = TextStyle(fontSize: 15.sp, fontWeight: FontWeight.normal,color: Colors.black);


  static final h3Bold = TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold);
  static final h3BoldWhite = TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold,color: AppColor.white);
  static final h3Normal = TextStyle(fontSize: 18.sp, fontWeight: FontWeight.normal);
  static final h3NormalWhite = TextStyle(fontSize: 18.sp, fontWeight: FontWeight.normal,color: Colors.white);
  static final h3NormalLightWhite = TextStyle(fontSize: 18.sp, fontWeight: FontWeight.normal,color: AppColor.lightWhite);


  static final p1Bold = TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold);
  static final p1Normal = TextStyle(fontSize: 16.sp, fontWeight: FontWeight.normal);

  static final p2Bold = TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold);
  static final p2Normal = TextStyle(fontSize: 14.sp, fontWeight: FontWeight.normal);

  static final p3Bold = TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold);
  static final p3Normal = TextStyle(fontSize: 12.sp, fontWeight: FontWeight.normal);
}