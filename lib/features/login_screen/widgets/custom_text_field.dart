
import 'package:e_commerce/features/login_screen/widgets/custom_text_form_fied.dart';
import 'package:e_commerce/utils/router_manager.dart';
import 'package:e_commerce/utils/text_styles.dart';
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
  bool visibalePassword= true;

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
            isEmail: true,
              hint: "please enter your  user-name",
              title: "enter your name") ,
          SizedBox(height: 32.h),
           Text("Password", style: TextStyles.textStyle18),
           SizedBox(height: 24.h),
          CustomTextFormField(
            hint: "please enter your Password",
              title: "enter your password",
              showPassword: visibalePassword,
              suffixIcon:
          IconButton(
            icon: Icon(
              visibalePassword?FontAwesomeIcons.eyeSlash:
                  FontAwesomeIcons.eye,
              color: Colors.grey,

            ),
            onPressed: _showPasswordVisibality,
          )),
           SizedBox(height: 4.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                },
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
            child:  Text("Login", style: TextStyles.textStyle20),
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

  void _showSnackBarMessage(String message){
    showDialog(context: context, builder: (context){
      return AlertDialog(

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),


        content:Column(
          mainAxisSize: MainAxisSize.min,
                    children: [
            Text(message,textAlign: TextAlign.center,style:   const TextStyle(
              fontWeight: FontWeight.bold
            ),),
               const SizedBox(height: 10,),
            const CircularProgressIndicator()
          ],
        ),
      );
    });
  }

  void login(){
    if(_formKey.currentState!.validate()){
      _showSnackBarMessage("Login Success");

      Future.delayed( const Duration(seconds: 3),(){
        Navigator.of(context).pop();
        GoRouter.of(context).push(RoutesManager.khome);
      });
    }
  }

  void _showPasswordVisibality(){
    setState(() {
 visibalePassword=!visibalePassword;
    });
  }
}



