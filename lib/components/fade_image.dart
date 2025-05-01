import 'package:flutter/material.dart';

class FadeImage extends StatelessWidget {
  const FadeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        width: 400,
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage('assets/intro_img_1.png'),
                fit: BoxFit.scaleDown,
                )),
      );
  }
}
