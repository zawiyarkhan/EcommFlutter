import 'package:flutter/material.dart';

class ProductNew extends StatefulWidget {
  const ProductNew({super.key});

  @override
  State<ProductNew> createState() => _ProductNewState();
}

class _ProductNewState extends State<ProductNew> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //height: height / 2,
        width: width / 1.5,
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
