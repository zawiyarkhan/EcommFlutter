class ProductOption {
  var Colour;
  var ProductID;
  var Size;

  ProductOption({this.Colour, this.ProductID, this.Size});

  static ProductOption fromJson(Map<String, dynamic> json) {
    return ProductOption(
      Colour: json['Name'],
      ProductID: json['URL'],
      Size: json['Size'],
    );
  }
}
