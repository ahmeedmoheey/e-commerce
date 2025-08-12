import 'package:e_commerce/core/utils/color_managrt.dart';
import 'package:e_commerce/core/utils/icons_manager.dart';
import 'package:e_commerce/features/main_layout.dart';
import 'package:e_commerce/features/tabs/favourite_items/widgets/fav_category_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class  CardProduct extends StatelessWidget {
  const  CardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ColorManager.primary
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Cart",style: TextStyle(
          fontSize: 20,
          fontWeight:   FontWeight.w500,
          color: ColorManager.darkBlue
        )),
         centerTitle: true,
        actions: [
         SvgPic(pic: IconsManager.search),
         SizedBox(width: 32.w,),
         SvgPic(pic: IconsManager.shoppingCart),
         SizedBox(width: 16.w,)
        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FavCategoryItems()
          ],
        ),
      ),

    );
  }
}
