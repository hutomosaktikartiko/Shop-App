import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constans.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/details/components/product_description.dart';
import 'package:shop_app/screens/details/components/product_images.dart';
import 'package:shop_app/screens/details/components/top_rounded_container.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                  color: Color(0xFFF6F7F9), child: ColorDots(product: product))
            ],
          ),
        )
      ],
    );
  }
}

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: Row(
        children: [
          ...List.generate(
              product.colors.length,
              (index) => ColorDot(
                    color: product.colors[index],
                    isSelected: selectedColor == index,
                  ))
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.color,
    @required this.isSelected,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: (isSelected) ? kPrimaryColor : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
