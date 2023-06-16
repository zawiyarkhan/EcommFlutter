// ignore_for_file: prefer_const_constructors

import 'package:devils_prada/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  TextEditingController _cost_controller = TextEditingController();
  TextEditingController _product_controller = TextEditingController();
  TextEditingController _description_controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
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
                        "Beverly shoes",
                        style: GoogleFonts.roboto(
                            fontSize: 20,
                            color: Color(0xff4A145B),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        height: height / 4,
                        width: width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff9C3587),
                        ),
                        child: Center(
                          child: Text(
                            "Add a picture",
                            style: GoogleFonts.roboto(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      controller: _cost_controller,
                      decoration: InputDecoration(
                          //prefixIcon: const Icon(Icons.email),
                          labelText: "Add Cost",
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
                      controller: _product_controller,
                      decoration: InputDecoration(
                          //prefixIcon: const Icon(Icons.email),
                          labelText: "Add Title",
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
                      controller: _description_controller,
                      decoration: InputDecoration(
                          //prefixIcon: const Icon(Icons.email),
                          labelText: "Add Product description",
                          labelStyle: const TextStyle(
                            fontSize: 18,
                            color: Colors.black87,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () async {
                          final prod = ProductsModel(
                            Product: _product_controller.text,
                            Price: _cost_controller.text,
                            Description: _description_controller.text,
                          );

                          bool create = await prod.createProduct();
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
                  ]),
            )),
      ),
    );
  }
}
