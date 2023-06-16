// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:devils_prada/views/authentication/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../navigation.dart';

class SignInPrompt extends StatefulWidget {
  const SignInPrompt({super.key});

  @override
  State<SignInPrompt> createState() => _SignInPromptState();
}

class _SignInPromptState extends State<SignInPrompt> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
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
              // SizedBox(
              //   height: 60,
              // ),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    height: height / 2.6,
                    width: width / 1.2,
                    //padding: EdgeInsets.all(70),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff4A145B),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Icon(
                            Icons.login,
                            color: Colors.white,
                            size: 70,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Sign in to your shop",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Get.to(() => SignIn());
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFF89F5B),
                              fixedSize: Size(150, 40),
                              //fixedSize: const Size(100,100),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Text(
                            "Get Started",
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Continue as a Customer",
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Get.to(() => MainNavigation());
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFF89F5B),
                              fixedSize: Size(150, 40),
                              //fixedSize: const Size(100,100),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Text(
                            "Lets Go",
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(
                flex: 3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
