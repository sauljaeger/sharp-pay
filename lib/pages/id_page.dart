import 'package:flutter/material.dart';
import 'package:smartpay/components/appbar_back.dart';
import 'package:smartpay/components/mytextfield.dart';
import 'package:country_picker/country_picker.dart';
import 'package:smartpay/components/sign_in.dart';
import 'package:smartpay/pages/pincode.dart';

class IdPage extends StatefulWidget {
  const IdPage({super.key});

  @override
  State<IdPage> createState() => _IdPageState();
}

class _IdPageState extends State<IdPage> {
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final countryController = TextEditingController();
  Country? _selectedCountry;

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
                height: 12,
              ),
             const Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Hey There tell us a",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            "about yourself",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.green),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              MyTextField(
                controller: nameController,
                hintText: "Full name",
                obscureText: false,
              ),
              const SizedBox(
                height: 12,
              ),
              MyTextField(
                controller: nameController,
                hintText: "Username",
                obscureText: false,
              ),
              const SizedBox(
                height: 12,
              ),
              MyTextField(
                controller: nameController,
                hintText: "password",
                obscureText: false,
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  readOnly: true,
                  decoration: InputDecoration(
                      hintText: 'Select country',
                      hintStyle: TextStyle(color: Colors.grey[500]),
                      prefixIcon: _selectedCountry != null
                          ? Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                children: [
                                  Text(
                                    '${_selectedCountry!.flagEmoji}',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '${_selectedCountry!.name}',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            )
                          : null,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.blue.shade700)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Colors.grey.shade50),
                  onTap: () {
                    showCountryPicker(
                        context: context,
                        onSelect: (Country country) {
                          setState(() {
                            _selectedCountry = country;
                            countryController.text = country.name;
                          });
                        });
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SignIn(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Pincode()));
                  },
                  TextTitle: "Continue")
            ],
          ),
        )),
      ),
    );
  }
}
