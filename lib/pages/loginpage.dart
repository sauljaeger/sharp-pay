import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:smartpay/components/squaretile.dart';
import 'package:smartpay/components/mytextfield.dart';
import 'package:smartpay/components/sign_in.dart';
import 'package:smartpay/pages/registerpage.dart';
import '../components/appbar_back.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  //text editing controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //sign user in method
  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: widget.emailController.text,
        password: widget.passwordController.text);
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
                  height: 30,
                ),
                const Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Hi There 👋',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Welcome Back Sign into your account',
                        style: TextStyle(color: Colors.grey[700], fontSize: 16),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 50,
                ),
                MyTextField(
                  controller: widget.emailController,
                  hintText: 'Email',
                  obscureText: false,
                ),

                const SizedBox(
                  height: 25,
                ),

                MyTextField(
                  controller: widget.passwordController,
                  hintText: 'Password',
                  obscureText: _obscureText,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),

                //forgot password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                              color: Colors.green[600],
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 25,
                ),

                SignIn(
                  TextTitle: "Sign in",
                  onTap: signUserIn,
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't Have an Account ",
                      style: TextStyle(fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Registerpage()));
                      },
                      child: Text(
                        " Sign up",
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                    )
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
