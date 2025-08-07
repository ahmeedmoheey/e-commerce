import 'package:e_commerce/features/Auth/login_screen/widgets/sign_in_view_body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF004182),
      body: SignInViewBody(),


    );
  }
}
