import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:shopping_app/controller/cart_controller/category_controller.dart';
import 'package:shopping_app/controller/cart_controller/product_controller.dart';
import 'package:shopping_app/view/cart/components/cart_page_background.dart';
import 'package:shopping_app/view/custom_widget/my_theme.dart';

import 'components/categories_header.dart';

class CartPage extends StatelessWidget {

  ProductController productController = Get.put(ProductController());

  CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartPageBackground(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Product",
                style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold),
              ),
              Categories()
            ],
          ),
        ),
      ),
    );
  }
}

