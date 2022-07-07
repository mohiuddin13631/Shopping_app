import 'package:flutter/material.dart';
import 'package:shopping_app/model/cart_model/product_model.dart';
class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key, required this.products}) : super(key: key);

  final ProductModel products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(products.name)),

    );
  }
}
