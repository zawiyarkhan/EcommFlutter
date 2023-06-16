import 'package:cloud_firestore/cloud_firestore.dart';

class StoreModel {
  var Username;
  var Password;
  var Products;
  var Name;
  var URL;
  var Logo;
  StoreModel(
      {this.Name,
      this.URL,
      this.Logo,
      this.Username,
      this.Password,
      this.Products});

  static StoreModel fromJson(Map<String, dynamic> json) {
    return StoreModel(
      Name: json['Name'],
      URL: json['URL'],
      Logo: json['Logo'],
      Username: json['Username'],
      Password: json['Password'],
      Products: json['Products'],
    );
  }

  String get getName {
    return Name;
  }

  set setName(String name) {
    Name = name;
  }

  String get getURL {
    return URL;
  }

  set setURL(String url) {
    URL = url;
  }
}
