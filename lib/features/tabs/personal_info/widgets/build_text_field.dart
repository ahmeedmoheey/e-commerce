import 'package:e_commerce/core/utils/assets_manager.dart';
import 'package:e_commerce/core/utils/color_managrt.dart';
import 'package:e_commerce/core/utils/icons_manager.dart';
import 'package:e_commerce/features/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuildTextField extends StatelessWidget {
  const BuildTextField({super.key, required this.title, required this.errMessage});
  final String title ;
  final String errMessage;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
             style: TextStyle(
               color: ColorManager.darkBlue,
               fontSize: 14,
               fontWeight: FontWeight.w500,

             ),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide( color: ColorManager.darkBlue.withOpacity(0.3),
                width: 1)
        ),
         errorBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(15),
             borderSide: BorderSide( color: ColorManager.darkBlue.withOpacity(0.3),
                 width: 1)
         ),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide( color: ColorManager.darkBlue.withOpacity(0.3),
                width: 1)
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide( color: ColorManager.darkBlue.withOpacity(0.3),
                width: 1)
        ),
       enabledBorder: OutlineInputBorder(
         borderRadius: BorderRadius.circular(15),
         borderSide: BorderSide( color: ColorManager.darkBlue.withOpacity(0.3),
         width: 1)
       ), 
        // contentPadding: EdgeInsets.symmetric(vertical: 2.w),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            width: 1,
            color: Color(0xFF0041824D).withOpacity(.3)
          )
        ),
        hintText: "$title",
        suffixIcon: IconButton(
          onPressed: () {

          },
          icon: SvgPic(pic: IconsManager.editIcon),
        ),

      ),
    );
  }
}
