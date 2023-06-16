// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:devils_prada/models/store_model.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/read_data.dart';
import '../add_product.dart';
import '../authentication/sign_in.dart';
import '../widgets/product_card.dart';

class Profile extends StatefulWidget {
  var Name;
  var URL;
  var Products;
  Profile({super.key, this.Name, this.Products, this.URL});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    // String Name = "";
    // String URL = "";
    StoreModel obj = StoreModel();
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    // String? Name;
    // late String URL;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Devil wears prada",
                    style: GoogleFonts.salsa(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => SignIn());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF89F5B),
                        fixedSize: Size(100, 50),
                        //fixedSize: const Size(100,100),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      "Logout",
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Beverly Shoes",
                    style: GoogleFonts.salsa(
                        fontSize: 32,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff4A145B)),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(
                        0xff4A145B,
                      ),
                    ),
                    child: Text(
                      "108,256\nredirects",
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "your instagram shop link is",
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Color(0xff4A145B),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(12),
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff4A145B),
                ),
                child: Text(
                  "https://www.instagram.com/Beverly.shoes/",
                  style: GoogleFonts.roboto(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Products",
                    style: GoogleFonts.roboto(
                      fontSize: 20,
                      color: Color(0xff4A145B),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => AddProduct());
                    },
                    child: Icon(
                      Icons.add_box,
                      size: 35,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              StreamBuilder<List<StoreModel>>(
                stream: readStoreTable(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    print(snapshot.error);
                  }
                  if (snapshot.hasData) {
                    var data = snapshot.data;
                    return Expanded(
                      child: ListView.builder(
                        itemCount: data!.length,
                        itemBuilder: (context, index) {
                          var products = data[index].Products;
                          String name = products[index];
                          String Name = data[index].Name;
                          String URL = data[index].URL;
                          // Profile(
                          //   Name: Name,
                          //   URL: URL,
                          // );
                          // String stock = data[index].Stock;
                          // String price = data[index].Price;
                          // String ratings = data[index].Ratings;
                          //List? answer = data[index].answer;
                          //String description = data[index].description;
                          return ProductCard(
                            name: name,
                          );
                        },
                      ),
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
