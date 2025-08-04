import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldSignUp extends StatelessWidget {
  TextFieldSignUp({
    super.key,
    required this.errMessages,
    required this.hint,
    this.showPassword = false,
    this.suffixIcon,
    this.keypordType,
    this.inputFormatters,
    this.isEmail = false,
    this.isPassword = false,
    this.controller,
  });

  final String errMessages;
  final String hint;
  final bool showPassword;
  final Widget? suffixIcon;
  final TextInputType? keypordType;
  final List<TextInputFormatter>? inputFormatters;
  final bool isEmail;
  final bool isPassword;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keypordType,
      inputFormatters: inputFormatters,
      obscureText: showPassword,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errMessages;
        }

        if (isEmail && !value.contains("@")) {
          return 'Enter a valid email';
        }

        if (isPassword) {
          if (value.length < 6) {
            return 'Password must be at least 6 characters';
          }

          final hasUppercase = value.contains(RegExp(r'[A-Z]'));
          final hasDigits = value.contains(RegExp(r'[0-9]'));
          final hasSpecialChars = value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

          if (!hasUppercase || !hasDigits || !hasSpecialChars) {
            return "Weak password: Use uppercase, number & symbol";
          }
        }

        return null;
      },
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        fillColor: Colors.white,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w300,
          fontSize: 18,
        ),
        hintText: hint,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
