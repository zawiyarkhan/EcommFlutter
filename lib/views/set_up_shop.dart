// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetUpShop extends StatefulWidget {
  const SetUpShop({super.key});

  @override
  State<SetUpShop> createState() => _SetUpShopState();
}

class _SetUpShopState extends State<SetUpShop> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
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
                  "Set up your shop with us!",
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
                        "By registering you confirm that you accept our terms of use and privacy policy",
                        style: GoogleFonts.roboto(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Register"),
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
