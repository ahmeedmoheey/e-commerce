import 'package:e_commerce/features/sign_up_screen/widgets/text_field_sign_uo.dart';
import 'package:e_commerce/utils/router_manager.dart';
import 'package:e_commerce/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomSignUpField extends StatefulWidget {
  CustomSignUpField({super.key});

  @override
  State<CustomSignUpField> createState() => _CustomSignUpFieldState();
}

class _CustomSignUpFieldState extends State<CustomSignUpField> {
  final _formKey = GlobalKey<FormState>();
  bool visibalePassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Full Name', style: TextStyles.textStyle18),
          SizedBox(height: 24.h),
          TextFieldSignUp(
              errMessages: "please enter your name", hint: "enter your full name"),
          SizedBox(height: 32.h),
          Text("Mobile Number", style: TextStyles.textStyle18),
          SizedBox(height: 24.h),
          TextFieldSignUp(
            keypordType:TextInputType.number ,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              errMessages: "please enter your number", hint: "enter your mobile  number"),
          SizedBox(height: 32.h),
          Text("E-mail address", style: TextStyles.textStyle18),
          SizedBox(height: 24.h),
          TextFieldSignUp(
            isEmail: true,
              errMessages: "please enter your email", hint: "enter your email address"),
          SizedBox(
            height: 32.h,
          ),
          Text(
            "Password",
            style: TextStyles.textStyle18,
          ),
          SizedBox(
            height: 24.h,
          ),
          TextFieldSignUp(
           isPassword: true,
            showPassword: visibalePassword,
              suffixIcon: IconButton(
                onPressed: _showPasswordVisibality,
                 icon:Icon(
                     visibalePassword? FontAwesomeIcons.eyeSlash:
                     FontAwesomeIcons.eye,
                   color: Colors.grey,

                 )
              ),
              errMessages: "please enter your password", hint: "enter your password"),
          SizedBox(
            height: 56.h,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 54, vertical: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {
                _signUp();
            },
            child: Text("Sign up", style: TextStyles.textStyle20),
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
  void _showPasswordVisibality(){
    setState(() {
      visibalePassword=!visibalePassword;
    });
  }


  void _signUp(){
    if(_formKey.currentState!.validate()){
      _showSnackBarMessage("signUp Successfully");

      Future.delayed(Duration(seconds: 3),(){
        GoRouter.of(context).push(RoutesManager.Klogin);
        Navigator.of(context).pop();
      });
    }
  }
}
