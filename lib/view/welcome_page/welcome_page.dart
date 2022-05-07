import 'package:flutter/material.dart';

import 'components/background.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Wellcome to shop family", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ],)
      )
    );
  }
}