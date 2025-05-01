import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:smartpay/components/appbar_back.dart';
import 'package:smartpay/components/mytextfield.dart';
import 'package:smartpay/components/sign_in.dart';
import 'package:smartpay/components/squaretile.dart';
import 'package:smartpay/pages/id_page.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  final emailController = TextEditingController();


  void showErrorMessage(String message){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: Text(message, style: TextStyle(
            color: Colors.white
          ),),
        ),
      );
    });
  }
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // this stops overflow
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        // this also stops overflow when keyboard pops
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                      child: AppbarBack(
                        onTap: () => Navigator.pop(context),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30  ,
                ),
                const Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Create a ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        
                      ),
                      Text('Sharp-Pay ', style: TextStyle(
                        color: Colors.green,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),),
                      Text('account', style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,

                      ),),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),


                const SizedBox(
                  height: 50,
                ),
                MyTextField(
                  controller: emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                const SizedBox(
                  height: 50,
                ),

                SignIn(
                  TextTitle: "Continue",
                  onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (context) => IdPage())),
                ),
                //sign in button
                //or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Row(children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey[300],
                        thickness: 0.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "OR",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey[300],
                        thickness: 0.5,
                      ),
                    ),
                  ]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // google button
                    SquareTile(imagePath: 'assets/googlelogo.png'),

                    const SizedBox(
                      width: 30,
                    ),
                    //apple button
                    SquareTile(imagePath: 'assets/applelogo.png'),
                  ],
                ),
                const SizedBox(
                  height: 140,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already a member ", style: TextStyle(
                        fontSize: 16
                    ),),
                    Text(" Sign In", style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16
                    ),)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
