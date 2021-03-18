import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
