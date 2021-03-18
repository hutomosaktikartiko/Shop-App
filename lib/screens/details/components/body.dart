import 'package:flutter/material.dart';
import 'package:shop_app/constans.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/product_images.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ProductImages(product: product);
  }
}
