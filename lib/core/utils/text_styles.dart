import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_managrt.dart';

class TextStyles{
  static const    TextStyle textStyle24 = TextStyle(
  color: Colors.white,
   fontSize: 24,
  fontWeight: FontWeight.w600,

);
 static    TextStyle textStyle16 = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w300,
  color: Colors.white,

);
 static    TextStyle textStyle18 = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  color: Colors.white,

);
 static const     TextStyle textStyle20 = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
  color: Color(0xFF004182),

);
 static  const    TextStyle textStyle14 = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w300,
     color: Colors.black
);
 static  const    TextStyle categories = TextStyle(
     fontSize: 18,
     fontWeight: FontWeight.w500,
     color: ColorManager.darkBlue
 );
 static  const    TextStyle viewAll = TextStyle(
     fontSize: 12,
     fontWeight: FontWeight.w400,
     color: ColorManager.darkBlue
 );
 static  const    TextStyle personalTexts = TextStyle(
     color: ColorManager.darkBlue,
     fontWeight: FontWeight.w500,
     fontSize: 18
 );
 static      TextStyle text11 = TextStyle(
     decoration: TextDecoration.lineThrough,
     fontSize: 11,
     fontWeight: FontWeight.w400,
     color: ColorManager.darkBlue.withOpacity(.6),
 );

}