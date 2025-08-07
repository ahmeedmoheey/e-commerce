import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/assets_manager.dart';

class FavCategoryItems extends StatelessWidget {
  const FavCategoryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        backgroundBlendMode:BlendMode.darken ,
        color: Colors.white10,
        borderRadius: BorderRadius.circular(15)
      ),
      width: double.infinity,
      height: 115.h,
      child: Row(
        children: [
          Container(
              width: 120.w,
            height: 113.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
               child:Image.asset(AssetsManager.shoesss) ,
            ),
          )
        ],
      ),
    );
  }
}
