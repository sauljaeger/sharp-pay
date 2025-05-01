import 'package:flutter/material.dart';
import 'package:smartpay/components/appbar_back.dart';

class Landingpage extends StatelessWidget {
  const Landingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: AppbarBack(onTap: ()=> Navigator.pushReplacement),
                )
              ],
            ),
            Center(
              child: Text("Hello There", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
