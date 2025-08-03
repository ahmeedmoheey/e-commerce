import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextFormField extends StatelessWidget {
   CustomTextFormField({super.key,required this.title, this.suffixIcon,this.showPassword=false,required this.hint,this.isEmail=false,});
String title ;
String hint;
final Widget? suffixIcon ;
 final bool showPassword;
 final bool isEmail;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:showPassword ,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "$hint";
        } if(isEmail && !value.contains("@")){
          return "enter valid email";
        }
             return null;
      },
      decoration: InputDecoration(
        hintText: "$title",
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w300,
        ),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );

  }
}
