import 'package:get/get.dart';
import 'package:shopping_app/model/cart_model/product_model.dart';

class CartController extends GetxController{
  var numberOfItems = 1.obs;
  var totalQty = 0.obs;
  var cartItems = <ProductModel>[].obs;

  void addItem(){
    numberOfItems.value++;
  }
  void removeItem(){
    if(numberOfItems.value > 1){
      numberOfItems.value--;
    }
  }

  void addItemInCart(ProductModel product) {
    cartItems.add(product);
    totalQty.value = totalQty.value + numberOfItems.value;
    numberOfItems.value = 1;
  }

  void initializeQuantity(){
    numberOfItems.value = 1;
  }
}