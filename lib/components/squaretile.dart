import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  SquareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.symmetric(horizontal:  65, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade200,

        ),
        borderRadius: BorderRadius.circular(16),
          color: Colors.white,

      ),
      child: Image.asset(imagePath, height: 40,),
    );
  }
}
