
import 'package:flutter/material.dart';

import '../../../../core/utils/assets_manager.dart';
import 'custom_sign_up_field.dart';

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
