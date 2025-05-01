import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  Function()? onTap;
  final String TextTitle;
  SignIn({super.key, required this.onTap, required this .TextTitle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black,
        ),
        child: Center(
          child: Text(TextTitle, style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
