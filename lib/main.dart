import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/view/custom_widget/my_theme.dart';
import 'package:shopping_app/view/welcome_page/welcome_page.dart';

import 'controller/gender_selection_controller.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  GenderSelectionController genderSelectionController =
  Get.put(GenderSelectionController());
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.DarkTheme(context),
      home: const welcomePage(),
    );
  }
}

