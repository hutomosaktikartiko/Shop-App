import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';
import 'package:shop_app/screens/home/components/home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenWidth(20),
            ),
            HomeHeader()
          ],
        ),
      ),
    );
  }
}
