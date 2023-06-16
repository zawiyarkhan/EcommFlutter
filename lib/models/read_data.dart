import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:devils_prada/models/product_model.dart';
import 'package:devils_prada/models/product_option_model.dart';
import 'package:devils_prada/models/store_model.dart';

Stream<List<StoreModel>> readStoreTable() => FirebaseFirestore.instance
    .collection('Stores')
    .snapshots()
    .map((snapshot) =>
        snapshot.docs.map((doc) => StoreModel.fromJson(doc.data())).toList());

Stream<List<ProductsModel>> readProductTable() => FirebaseFirestore.instance
    .collection('Products')
    .snapshots()
    .map((snapshot) => snapshot.docs
        .map((doc) => ProductsModel.fromJson(doc.data()))
        .toList());

Stream<List<ProductOption>> readProductOptionTable() =>
    FirebaseFirestore.instance.collection('ProductOptions').snapshots().map(
        (snapshot) => snapshot.docs
            .map((doc) => ProductOption.fromJson(doc.data()))
            .toList());
