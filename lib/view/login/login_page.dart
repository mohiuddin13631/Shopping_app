import 'package:flutter/material.dart';
import 'package:shopping_app/view/custom_widget/my_theme.dart';
import 'package:shopping_app/view/login/components/login_background.dart';
import 'package:shopping_app/view/login/components/password_field.dart';
import 'package:shopping_app/view/login/components/textfield_decorator.dart';
import 'package:shopping_app/view/signup/signup.dart';
import 'package:shopping_app/view/welcome_page/components/custom_button.dart';

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
                  child: UserIdTextField(
                    useridcontroller: useridcontroller,
                    userIdErrorText: userIdErrorText,
                    userIdHintText: userIdHintText,
                    userIdHintTextColor: userIdHintTextColor,
                    userIdTextFieldPrefixIcon: userIdTextFieldPrefixIcon,
                    userIdTextFieldPrefixIconColor:
                        userIdTextFieldPrefixIconColor,
                    onUserIdValueChange: (value) {},
                  ),
                ),
                TextFieldDecorator(
                    child: UserPassTextField(
                  userPasscontroller: passcontroller,
                  userPassErrorText: "Password can not be empty",
                  userPassHintText: "Enter Password",
                  userPassHintTextColor: Colors.purple,
                  userPassTextFieldPrefixIcon: Icons.lock,
                  userPassTextFieldPrefixIconColor: Colors.purple,
                  suffixIcon: Icons.visibility_off,
                  suffixIconColor: Colors.purple,
                  onUserPassValueChange: (value) {},
                )),
                CustomButton(
                    buttonColor: MyTheme.loginButtonColor,
                    buttontext: "LOGIN",
                    textColor: Colors.white,
                    handleButtonClick: (){print("login");}
                    ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have account ?",style: TextStyle(fontWeight: FontWeight.bold),),
                    const SizedBox(width: 10,),
                    InkWell(
                        child: const Text(
                            "Sign Up",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),
                        ),
                      onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));
                      },
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    )));
  }
}
