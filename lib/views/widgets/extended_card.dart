// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../product.dart';

class HomeCard extends StatefulWidget {
  String title;
  String ratings;
  String stock;
  String price;
  String description;
  String thumbnail;
  //String URL;
  HomeCard({
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
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Get.to(() => Product(
            title: widget.title,
            price: widget.price,
            ratings: widget.ratings,
            stock: widget.ratings,
            description: widget.description,
            thumbnail: widget.thumbnail
            //URL: widget.URL,
            ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Ink(
          height: height / 6,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff9C3587)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    widget.thumbnail,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    // Text(
                    //   "Available: ${widget.stock}",
                    //   style: GoogleFonts.roboto(
                    //       fontSize: 14,
                    //       fontWeight: FontWeight.w400,
                    //       color: Colors.white),
                    // ),
                    // SizedBox(
                    //   height: 4,
                    // ),
                    Text(
                      "Rs.${widget.price}",
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Text(
                      "⭐ ${widget.ratings}",
                      style: GoogleFonts.roboto(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
