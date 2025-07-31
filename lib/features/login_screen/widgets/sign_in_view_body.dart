import 'package:e_commerce/utils/assets_manager.dart';
import 'package:flutter/material.dart';

import '../../../utils/text_styles.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical:60 ,horizontal: 80),
              child: Image.asset(AssetsManager.route,width: 237,height: 71.1,),
            ),
           const SizedBox(height: 30,),
           const  Text("Welcome Back To Route",style: TextStyles.textStyle24,),
                 const SizedBox(height: 5,),
         const  Text("Please sign in with your mail",style: TextStyles.textStyle16,),


        ],
      ),
    ) ;
  }
}
