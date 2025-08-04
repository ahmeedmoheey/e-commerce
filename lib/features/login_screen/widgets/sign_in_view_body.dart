import 'package:e_commerce/utils/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/text_styles.dart';
import 'custom_text_field.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(AssetsManager.route,width: double.infinity,height: 71.1.w,),
              ),
              SizedBox(height: 30.h,),
             const  Text("Welcome Back To Route",style: TextStyles.textStyle24,),
                    SizedBox(height: 5.h,),
             Text("Please sign in with your mail",style: TextStyles.textStyle16,),
             SizedBox(height: 40.h,),
            CustomTextField(),



          ],
        ),
      ),
    ) ;
  }
}
