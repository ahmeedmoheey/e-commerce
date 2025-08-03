import 'package:e_commerce/features/login_screen/widgets/custom_text_field.dart';
import 'package:e_commerce/features/sign_up_screen/widgets/custom_sign_up_field.dart';
import 'package:e_commerce/utils/assets_manager.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Image.asset(AssetsManager.route,width: double.infinity,height: 71,),
             ),
             const SizedBox(height: 46,),
            CustomSignUpField()
          ],
        ),
      ),
    );
  }
}
