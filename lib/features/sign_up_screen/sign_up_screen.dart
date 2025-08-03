import 'package:e_commerce/features/sign_up_screen/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF004182),
      body: SignUpViewBody(),
    );
  }
}
