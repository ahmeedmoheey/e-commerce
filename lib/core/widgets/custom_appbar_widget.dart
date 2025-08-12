
import 'package:e_commerce/core/utils/router_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../features/main_layout.dart';
import '../utils/assets_manager.dart';
import '../utils/color_managrt.dart';
import '../utils/icons_manager.dart';

class CustomAppBarWidgets extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarWidgets({super.key, this.automaticallyImplyLeading});
  final bool? automaticallyImplyLeading ;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.white,
      automaticallyImplyLeading:automaticallyImplyLeading??false ,
      elevation: 0,
      title: SvgPic(
          colorFilter: ColorFilter.mode(ColorManager.darkBlue, BlendMode.srcIn),
        pic: IconsManager.routee,
      ),
      bottom: PreferredSize(
        preferredSize: Size(100.h,60.w),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(child: TextFormField(
               cursorColor: ColorManager.primary,
                style: TextStyle(
                  fontSize: 22.sp,
                  color: ColorManager.primary,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 12.w,
                  vertical: 8.h),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10000),
                      borderSide: BorderSide(
                        color: ColorManager.primary,
                        width: 1,
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10000),
                      borderSide: BorderSide(
                        color: ColorManager.primary,
                        width: 1,
                      )
                  ),
                  disabledBorder:   OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10000),
                      borderSide: BorderSide(
                        color: ColorManager.primary,
                        width: 1,
                      )
                  ) ,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10000),
                      borderSide: BorderSide(
                        color: ColorManager.primary,
                        width: 1,
                      )
                  ),
                  errorBorder:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10000),
                      borderSide: BorderSide(
                        color: ColorManager.error,
                        width: 1,
                      ),
                  ),
                  prefixIcon: Image.asset(AssetsManager.iconSearch,),
                  hintText:"what do you search for?",
                  hintStyle: TextStyle(
                    color: ColorManager.primary,
                    fontSize: 16
                  )

                ),


              )),
              IconButton(onPressed: (){
                GoRouter.of(context).push(RoutesManager.kCard);


              }, icon: SvgPic(
                pic: IconsManager.shoppingCart,
              ))
            ],
          ),
        ) ,
      ),


    );
  }

  @override
  Size get preferredSize => Size(0, 130.h);
}
