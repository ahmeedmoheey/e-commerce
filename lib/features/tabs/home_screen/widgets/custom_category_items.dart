import 'package:e_commerce/core/utils/assets_manager.dart';
import 'package:e_commerce/core/utils/color_managrt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCategoryItems extends StatelessWidget {
  const CustomCategoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 70.r,
          child:  Image.asset(AssetsManager.images4,fit: BoxFit.cover, ) ,
        ),
        SizedBox(height: 8.h),
        const Text(
          "men's\nfashion",
          textAlign: TextAlign.center,
          style: TextStyle(
             fontWeight: FontWeight.w400,
            fontSize: 14,
            color: ColorManager.darkBlue
          ),
        ),

      ],


    );
  }
}
