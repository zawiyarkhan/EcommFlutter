// ignore_for_file: prefer_const_constructors

import 'package:devils_prada/models/product_model.dart';
import 'package:devils_prada/models/read_data.dart';
import 'package:devils_prada/views/widgets/product_new.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/extended_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(6.0),
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
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Top picks for you",
                    style: GoogleFonts.roboto(
                        fontSize: 24,
                        color: Color(0xff9C3587),
                        fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                StreamBuilder<List<ProductsModel>>(
                  stream: readProductTable(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      print(snapshot.error);
                    }
                    if (snapshot.hasData) {
                      var data = snapshot.data;
                      return SizedBox(
                        height: height / 2.7,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: data!.length,
                          itemBuilder: (context, index) {
                            String title = data[index].Product;
                            String stock = data[index].Stock;
                            String price = data[index].Price;
                            String ratings = data[index].Ratings;
                            String description = data[index].Description;
                            String thumbnail = data[index].Thumbnail;
                            //String URL = data[index].
                            //List? answer = data[index].answer;
                            //String description = data[index].description;
                            // return HomeCard(
                            //     title: title,
                            //     stock: stock,
                            //     price: price,
                            //     ratings: ratings,
                            //     description: description,
                            //     thumbnail: thumbnail);

                            return ProductNew();
                          },
                        ),
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                StreamBuilder<List<ProductsModel>>(
                  stream: readProductTable(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      print(snapshot.error);
                    }
                    if (snapshot.hasData) {
                      var data = snapshot.data;
                      return SizedBox(
                        height: height / 2.7,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: data!.length,
                          itemBuilder: (context, index) {
                            String title = data[index].Product;
                            String stock = data[index].Stock;
                            String price = data[index].Price;
                            String ratings = data[index].Ratings;
                            String description = data[index].Description;
                            String thumbnail = data[index].Thumbnail;
                            //String URL = data[index].
                            //List? answer = data[index].answer;
                            //String description = data[index].description;
                            // return HomeCard(
                            //     title: title,
                            //     stock: stock,
                            //     price: price,
                            //     ratings: ratings,
                            //     description: description,
                            //     thumbnail: thumbnail);

                            return ProductNew();
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
      ),
    );
  }
}
