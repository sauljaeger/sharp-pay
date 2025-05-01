import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:smartpay/components/appbar_back.dart';
import 'package:smartpay/components/sign_in.dart';
import 'package:smartpay/components/sign_in.dart';
import 'package:smartpay/pages/registersuccess.dart';

class Pincode extends StatefulWidget {
  const Pincode({super.key});

  @override
  State<Pincode> createState() => _PincodeState();
}

class _PincodeState extends State<Pincode> {
  final pincodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 8.0),
                    child: AppbarBack(onTap: () => Navigator.pop(context)),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Set up your PIN code",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "We use state-of-the art security measures ",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "to protect your information at all times",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: PinCodeTextField(
                  appContext: context,
                  length: 6,
                  controller: pincodeController,
                  cursorHeight: 19,
                  enableActiveFill: true,
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    
                  ),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    fieldWidth: 50,
                    inactiveColor: Colors.grey,
                    selectedColor: Colors.lightGreen,
                    activeFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    inactiveFillColor: Colors.grey.shade100,
                    borderWidth: 1,
                    borderRadius: BorderRadius.circular(12)

                  ),
                ),
              ),

              const SizedBox(
                height: 50,
              ),
              
              SignIn(
                onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) =>Registersuccess())),
                TextTitle: "Continue",
              )
            ],
          ),
        )),
      ),
    );
  }
}
