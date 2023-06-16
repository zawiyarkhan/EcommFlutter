// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:devils_prada/models/store_model.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/read_data.dart';
import '../widgets/shop_list_card.dart';

class ShopList extends StatefulWidget {
  const ShopList({super.key});

  @override
  State<ShopList> createState() => _ShopListState();
}

class _ShopListState extends State<ShopList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15.0),
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
                  "Buy Things you love!!",
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
                child: Text(
                  "Support Instagram business only on Devils wear prada",
                  style: GoogleFonts.roboto(
                      fontSize: 15,
                      color: Color(0xff4A145B),
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 40,
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
                          String Name = data[index].Name;
                          String URL = data[index].URL;
                          String Logo = data[index].Logo;
                          List Products = data[index].Products;

                          //String ratings = data[index].Ratings;
                          //List? answer = data[index].answer;
                          //String description = data[index].description;
                          return ShopCard(
                            name: Name,
                            logo: Logo,
                            url: URL,
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
