import 'package:flutter/material.dart';

class AppbarBack extends StatelessWidget {
  Function()? onTap;
  AppbarBack({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade400,
          ),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Center(
          child: Icon(Icons.arrow_back_ios_new),
        ),
      ),
    );
  }
}
