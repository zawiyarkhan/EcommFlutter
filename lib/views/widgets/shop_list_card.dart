// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopCard extends StatefulWidget {
  String name;
  String url;
  String logo;
  ShopCard(
      {super.key, required this.name, required this.logo, required this.url});

  @override
  State<ShopCard> createState() => _ShopCardState();
}

class _ShopCardState extends State<ShopCard> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: height / 5.5,
          width: width / 2.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: NetworkImage(
                    widget.logo,
                  ),
                  fit: BoxFit.cover)),
          child: Center(
            child: Text(
              widget.name,
              style: GoogleFonts.roboto(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          )),
    );
    ;
  }
}
