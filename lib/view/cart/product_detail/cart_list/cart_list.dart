import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:shopping_app/controller/cart_controller/product_details/cart_controller.dart';
import 'package:shopping_app/view/cart/product_detail/cart_list/component/cart_list_background.dart';

class CartList extends StatelessWidget {
  CartList({Key? key}) : super(key: key);

  CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: CartListBackground(
        child: ListView.builder(
            itemCount: cartController.cartItems.length,
            itemBuilder: (context, index) {
              var currentItem = cartController.cartItems[index];
              return Card(
                clipBehavior: Clip.none,
                color: Colors.purple,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(currentItem.image,width: 100,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Quantity: ${cartController.totalQty.value}"),
                        )
                      ],
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: SvgPicture.asset(
          "assets/svg/back.svg",
          color: Colors.white,
        ),
      ),
      title: const Text(
        "Item list",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
