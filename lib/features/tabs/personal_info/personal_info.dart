import 'package:e_commerce/core/utils/color_managrt.dart';
import 'package:e_commerce/core/utils/icons_manager.dart';
import 'package:e_commerce/core/utils/text_styles.dart';
import 'package:e_commerce/features/main_layout.dart';
import 'package:e_commerce/features/tabs/personal_info/widgets/build_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
         child: SingleChildScrollView(
           child: SafeArea(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                   SvgPic(pic: IconsManager.routee),
                  SizedBox(height: 24.h,),
                const  Text('Welcome, Ahmed',style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.w500,
                   color: ColorManager.darkBlue
                 ),),
                 SizedBox(height: 8.h,),
                   Text('ahmedmohey@gmail.com',style: TextStyle(
                   color: ColorManager.darkBlue.withOpacity(.60),
                   fontSize: 14,
                    fontWeight: FontWeight.w500
                 ),),
                     SizedBox(height:40.h ,),
                const Text("Your full name",style: TextStyles.personalTexts),
                 SizedBox(height: 16.h,),
                    BuildTextField(title: "Ahmed Ibrahim Mohey" ,errMessage: "",),
                 SizedBox(height: 24.h,),
                 Text("Your E-mail",style: TextStyles.personalTexts,),
                 SizedBox(height: 16.h,),
                 BuildTextField(title: "ahmedmohey@gmail.com" ,errMessage: " ",),
                 SizedBox(height: 24.h,),
                 Text("Your password",style: TextStyles.personalTexts,),
                 SizedBox(height: 16.h,),
                 BuildTextField(title: "**************" ,errMessage: " ",),
                 SizedBox(height: 24.h,),

                 Text("Your mobile number",style: TextStyles.personalTexts,),
                 SizedBox(height: 16.h,),
                 BuildTextField(title: "01098760229" ,errMessage: " ",),
                 SizedBox(height: 24.h,),

                 Text("Your Address",style: TextStyles.personalTexts,),
                 SizedBox(height: 16.h,),
                 BuildTextField(title: "6th October, street 11....." ,errMessage: " ",),







               ],
             ),
           ),
         ),
    );
  }
}
