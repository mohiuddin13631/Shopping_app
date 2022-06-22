import 'package:get/get.dart';

class CategoryController extends GetxController{
  var currentIndex = 0.obs;

  List<String> categoryList = [
    "jacket",
    "Over cost",
    "Bags",
    "Hand Bags",
    "Perfume",
    "Pants",
    "Jeans",
    "Top",
  ];

  void changeIndex(int index){
    currentIndex.value = index;
  }
}