import 'package:get/get.dart';

class CartController extends GetxController{
  var numberOfItems = 1.obs;
  void addItem(){
    numberOfItems.value++;
  }
  void removeItem(){
    if(numberOfItems.value > 1){
      numberOfItems.value--;
    }
  }
}