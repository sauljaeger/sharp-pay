import 'package:flutter/material.dart';
import 'package:smartpay/components/fade_image.dart';
import 'package:smartpay/components/get_started_button.dart';
import 'package:smartpay/pages/loginpage.dart';

class onboarding_one extends StatefulWidget {
  const onboarding_one({super.key});

  @override
  State<onboarding_one> createState() => _onboarding_oneState();
}

class _onboarding_oneState extends State<onboarding_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FadeImage(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Center(
                    child: Text(
                      "Finance app the safest and most trusted",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Your finance work starts here. We are here to help track and deal with speeding up your transactions",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  GetStartedButton(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage())),
                  ),
                ],
              )
            ],


          ),
        ),

        Container(

        )
      ]),
    );
  }
}
