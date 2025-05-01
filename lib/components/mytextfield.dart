//text field
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final suffixIcon;

  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(

        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(

          suffixIcon: suffixIcon,
          enabledBorder:
              OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.white)
              ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            //changes color when in use
            borderSide: BorderSide(
              color: Colors.blue.shade700,
            ),

          ),
          fillColor: Colors.grey.shade50,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500]
          ),

        ),
      ),
    );
  }
}
