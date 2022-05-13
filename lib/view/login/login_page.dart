import 'package:flutter/material.dart';
import 'package:shopping_app/view/custom_widget/my_theme.dart';
import 'package:shopping_app/view/login/components/login_background.dart';
import 'package:shopping_app/view/login/components/textfield_decorator.dart';

import 'components/userid_text_field.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController useridcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  String userIdErrorText = "User id can not be empty";
  String userIdHintText = "Enter user Id";
  Color userIdHintTextColor = Colors.purple;
  IconData userIdTextFieldPrefixIcon = Icons.person;
  Color userIdTextFieldPrefixIconColor = Colors.purple;

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: LoginBackground(
            child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/Login.png"),
          const Text(
            "Login",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFieldDecorator(
                  child: UserIdTextField(useridcontroller: useridcontroller, userIdErrorText: userIdErrorText, userIdHintText: userIdHintText, userIdHintTextColor: userIdHintTextColor, userIdTextFieldPrefixIcon: userIdTextFieldPrefixIcon, userIdTextFieldPrefixIconColor: userIdTextFieldPrefixIconColor, onUserIdValueChange: (value){},),
                )
              ],
            ),
          )
        ],
      ),
    )));
  }
}

