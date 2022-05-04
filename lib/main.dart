import 'package:flutter/material.dart';
import 'package:shopping_app/view/custom_widget/my_theme.dart';
import 'package:shopping_app/view/welcome_page/welcome_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.DarkTheme(context),
      home: const welcomePage(),
    );
  }
}

