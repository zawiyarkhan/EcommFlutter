import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductsModel {
  var Availibility;
  var Category;
  var Description;
  var Price;
  var Product;
  var Stock;
  var storeID;
  var Ratings;
  var Thumbnail;

  ProductsModel({
    this.Availibility = true,
    this.Category = " ",
    this.Description,
    this.Price,
    this.Product,
    this.Stock = "50",
    this.storeID = "  ",
    this.Ratings = "0.0",
    this.Thumbnail = " ",
  });

  static ProductsModel fromJson(Map<String, dynamic> json) {
    return ProductsModel(
        Availibility: json['Availibility'],
        Category: json['Category'],
        Price: json['Price'],
        Description: json['Description'],
        Product: json['Product'],
        Stock: json['Stock'],
        storeID: json['StoreID'],
        Ratings: json['Ratings'],
        Thumbnail: json['Thumbnail']);
  }

  Future<bool> createProduct() async {
    var collection = await FirebaseFirestore.instance
        .collection('Products')
        .doc()
        .set(toJson());
    //final docQuestion = FirebaseFirestore.instance.collection('Question').doc();
    //final question = QuestionModel(title: title, tags: tags, description: description, answer: answer, askedBy: askedBy, erp: erp, questionID: questionID, userID: userID);
    //final json = question.toJson();

    //await docQuestion.set(json);
    return true;
  }

  Map<String, dynamic> toJson() => {
        'Availability': Availibility,
        'Category': Category,
        'Description': Description,
        'Price': Price,
        'Product': Product,
        'Ratings': Ratings,
        'Stock': Stock,
        'Thumbnail': Thumbnail
      };
}
