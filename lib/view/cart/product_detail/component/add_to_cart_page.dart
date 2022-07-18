import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/model/cart_model/product_model.dart';
import 'package:shopping_app/view/custom_widget/my_theme.dart';

class addToCartPage extends StatelessWidget {
  const addToCartPage({
    Key? key,
    required this.products,
  }) : super(key: key);

  final ProductModel products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: MyTheme.defaultPadding),
      child: Row(
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: MyTheme.defaultPadding),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Color(int.parse(products.color)),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(int.parse(products.color))),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset("assets/svg/cart.svg"),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                    backgroundColor: MaterialStateProperty.all(Color(int.parse(products.color))),
                  ),
                  child: Text(
                      "Buy Now".toUpperCase(),
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}
