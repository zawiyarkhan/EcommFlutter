// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Product extends StatefulWidget {
  String title;
  String ratings;
  String stock;
  String price;
  String description;
  String thumbnail;
  //String URL;
  Product({
    super.key,
    required this.title,
    required this.ratings,
    required this.stock,
    required this.price,
    required this.description,
    required this.thumbnail,
    //required this.URL,
  });

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
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
              SizedBox(
                height: 40,
              ),
              Center(
                child: Text(
                  widget.title,
                  style: GoogleFonts.roboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4A145B)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  height: height / 3,
                  width: width,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.network(
                    widget.thumbnail,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Rs.${widget.price}",
                    style: GoogleFonts.roboto(
                        fontSize: 36,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffF89F5B)),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                widget.description,
                style: GoogleFonts.roboto(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff4A145B)),
              ),
              Spacer(
                flex: 1,
              ),
              Text(
                "Visit their instagram shop at",
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffF89F5B),
                ),
              ),
              Text(
                "https://www.instagram.com/Beverly.shoes/",
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff9C3587),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
