import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:shopping_app/model/cart_model/product_model.dart';
import 'package:shopping_app/view/custom_widget/my_theme.dart';

import 'component/product_details_body.dart';
class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key, required this.products}) : super(key: key);

  final ProductModel products;//come from card page

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(
        int.parse(products.color),
      ),
      appBar: buildAppBar(),
      body: ProductDetailsBody(products: products,),

    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(
      int.parse(products.color),
      ),
      elevation: 0,
      leading: IconButton( //back button
        onPressed: (){
          Get.back();
        },
        icon: SvgPicture.asset("assets/svg/back.svg",color: Colors.white,),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(left: MyTheme.defaultPadding,right: MyTheme.defaultPadding),
          child: Badge(
            badgeContent: Text("0"),
              child: SvgPicture.asset("assets/svg/heart.svg",width: 30,)
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: MyTheme.defaultPadding,right: MyTheme.defaultPadding),
          child: Badge(
              badgeContent: Text("0"),
              child: SvgPicture.asset("assets/svg/cart.svg")
          ),
        ),
      ],
    );
  }
}

