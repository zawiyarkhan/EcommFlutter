// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductCard extends StatefulWidget {
  String name;
  ProductCard({super.key, required this.name});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: height / 5.5,
        width: width / 2.4,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xff9C3587),
        ),
        child: Center(
          child: Text(
            widget.name,
            style: GoogleFonts.roboto(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        // child: Image.asset(
        //   "assets/handbag.jpeg",
        //   fit: BoxFit.cover,
        // ),
      ),
    );
  }
}
