import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  Function()? onTap;
  GetStartedButton({super.key, required, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black

        ),
        margin: EdgeInsets.all(15),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Center(
            child: Text("Get Started", style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),),
          ),
        ),
      ),
    );
  }
}
