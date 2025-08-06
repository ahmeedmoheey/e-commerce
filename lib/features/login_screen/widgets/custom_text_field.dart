import 'package:e_commerce/features/login_screen/widgets/custom_text_form_fied.dart';
import 'package:e_commerce/utils/router_manager.dart';
import 'package:e_commerce/utils/text_styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomTextField extends StatefulWidget {
  CustomTextField({super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final _formKey = GlobalKey<FormState>();
  bool visibalePassword = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('User Name', style: TextStyles.textStyle18),
          SizedBox(height: 24.h),
          CustomTextFormField(
            controller: emailController,
            isEmail: true,
            hint: "please enter your user-name",
            title: "enter your name",
          ),
          SizedBox(height: 32.h),
          Text("Password", style: TextStyles.textStyle18),
          SizedBox(height: 24.h),
          CustomTextFormField(
            controller: passwordController,
            hint: "please enter your Password",
            title: "enter your password",
            showPassword: visibalePassword,
            suffixIcon: IconButton(
              icon: Icon(
                visibalePassword
                    ? FontAwesomeIcons.eyeSlash
                    : FontAwesomeIcons.eye,
                color: Colors.grey,
              ),
              onPressed: _showPasswordVisibality,
            ),
          ),
          SizedBox(height: 4.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot password',
                  style: TextStyles.textStyle18.copyWith(
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.h),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 54, vertical: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {
              login();
            },
            child: Text("Login", style: TextStyles.textStyle20),
          ),
          SizedBox(height: 32.h),
          Center(
            child: InkWell(
              onTap: () {
                GoRouter.of(context).push(RoutesManager.kSignUp);
              },
              child: Text(
                "Don’t have an account? Create Account",
                style: TextStyles.textStyle18.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showLoadingDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              CircularProgressIndicator(),
              SizedBox(height: 10),
              Text(
                "Please wait...",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
      },
    );
  }


  void login() async {
    if (_formKey.currentState!.validate()) {
      _showLoadingDialog();

      try {
        UserCredential user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );

        Navigator.of(context).pop();

        GoRouter.of(context).push(RoutesManager.khome);

      } on FirebaseAuthException catch (e) {
        Navigator.of(context).pop();

        String errorMessage;

        switch (e.code) {
          case "wrong-password":
            errorMessage = "Incorrect password. Please try again.";
            break;
          case "invalid-email":
            errorMessage = "The email address is not valid.";
            break;
          case "user-disabled":
            errorMessage = "This user account has been disabled.";
            break;
          case "invalid-credential":
            errorMessage =
            "Email or password is incorrect. Please try again.";
            break;
          default:
            errorMessage = "An unexpected error occurred. Please try again.";
        }

        _showErrorDialog(errorMessage);
      } catch (e) {
        Navigator.of(context).pop();
        _showErrorDialog("Something went wrong. Please try again.");
      }
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Login Error'),
          content: Text(message),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Ok"),
            )
          ],
        );
      },
    );
  }

  void _showPasswordVisibality() {
    setState(() {
      visibalePassword = !visibalePassword;
    });
  }
}
