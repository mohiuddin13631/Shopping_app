import 'package:flutter/material.dart';
import 'package:shopping_app/view/custom_widget/my_theme.dart';

import 'components/background.dart';
import 'components/custom_button.dart';

class welcomePage extends StatelessWidget {

  const welcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Wellcome to shop family",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "assets/images/undraw_Balloons.png",
              width: size.width * 0.7,
            ),
            CustomButton(
              buttonColor: MyTheme.loginButtonColor,
              buttontext: "LOGIN",
              textColor: Theme.of(context).colorScheme.onPrimary,
              handleButtonClick: loginButtonClickHandler,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              buttonColor: MyTheme.signupButtonColor,
              buttontext: "SIGNUP",
              textColor: Colors.black,
              handleButtonClick: signupButtonClickHandler,
            ),
          ],
        ),
      ),
    ));
  }
  loginButtonClickHandler(){
    print("loging clicked");
  }
  signupButtonClickHandler(){
    print("Signup clicked");
  }
}

