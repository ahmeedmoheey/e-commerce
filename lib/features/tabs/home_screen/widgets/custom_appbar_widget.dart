import 'package:e_commerce/utils/icons_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utils/assets_manager.dart';
import '../../../../utils/text_styles.dart';
import '../home_screen.dart';

class CustomAppBarWidgets extends StatelessWidget {
  const CustomAppBarWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(AssetsManager.route2, width: 66, height: 22),
            ),
            SizedBox(height: 18.h),
            Row(
                children:[
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 50.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Color(0xFF004182), width: 1),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: IconButton(
                              onPressed: () {},
                              icon:   SvgPic(pic: IconsManager.search),
                            ),
                          ),
                          SizedBox(width: 7.w),
                          Expanded(
                            flex: 3,
                            child: TextField(
                              decoration: const  InputDecoration(
                                border: InputBorder.none,
                                hintText: "what do you search for?",
                                hintStyle: TextStyles.textStyle14,
                              ),
                              style: TextStyle(
                                fontSize: 25.sp,
                                color: Colors.blue.shade900,
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 2.w,),
                  Expanded(
                      flex: -1,
                      child: IconButton(onPressed: (){}, icon:  SvgPic(pic: IconsManager.shoppingCart,)))
                ] ),

          ],
        ),
      ),
    );
  }
}
