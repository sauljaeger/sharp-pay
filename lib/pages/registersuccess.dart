import 'package:flutter/material.dart';
import 'package:smartpay/components/appbar_back.dart';
import 'package:smartpay/components/sign_in.dart';
import 'package:smartpay/pages/landingpage.dart';

class Registersuccess extends StatefulWidget {
  const Registersuccess({super.key});

  @override
  State<Registersuccess> createState() => _RegistersuccessState();
}

class _RegistersuccessState extends State<Registersuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                    child: AppbarBack(onTap: () => Navigator.pop(context)),
                  )
                ],
              ),
              
              Container(
                height: 400,
                width: 400,
                child: Center(
                  child: Image.asset('assets/thumb.png'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Registration Successful", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),)
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              
              SignIn(onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Landingpage())), TextTitle: "Finish")
            ],
          ),
        )),
      ),
    );
  }
}
