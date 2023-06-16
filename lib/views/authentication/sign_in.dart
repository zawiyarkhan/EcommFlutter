// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../navigation.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    String username;
    String password;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Devil wears prada",
                style: GoogleFonts.salsa(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Center(
                child: Text(
                  "Sign In",
                  style: GoogleFonts.roboto(
                      fontSize: 24, fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      TextFormField(
                        //controller: _emailField,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.email),
                            labelText: "Username",
                            labelStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        //controller: _emailField,
                        decoration: InputDecoration(
                            fillColor: Color(0xFF613468),
                            prefixIcon: const Icon(Icons.password),
                            labelText: "Password",
                            labelStyle: const TextStyle(
                              fontSize: 18,
                              color: Colors.black87,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Dont have an account? Create one here",
                        style: GoogleFonts.roboto(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Get.to(() => MainNavigation());
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF613468),
                              fixedSize: Size(150, 50),
                              //fixedSize: const Size(100,100),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Text(
                            "Done",
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(
                flex: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
