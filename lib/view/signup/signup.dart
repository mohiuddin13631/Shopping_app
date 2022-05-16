import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:shopping_app/controller/signup_controller.dart';
import 'package:shopping_app/view/custom_widget/my_theme.dart';
import 'package:shopping_app/view/login/components/signup_textfield.dart';
import 'package:shopping_app/view/login/login_page.dart';
import 'package:shopping_app/view/signup/components/signup_background.dart';
import 'package:shopping_app/view/signup/components/signup_textfield_decorator.dart';
import 'package:shopping_app/view/welcome_page/components/custom_button.dart';
import 'components/gender_selection.dart';
import 'components/signup_profile_picture.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  SignUpController signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpBackground(
          child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sign Up",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(
              height: 20,
            ),
             SignUpProfilePicture(),
            const SizedBox(
              height: 20,
            ),
            SignupTextFieldDecorator(
                child: SignupUserIdTextField(
                    useridcontroller: nameController,
                    userIdErrorText: "Name can not be empty",
                    userIdHintText: "Enter name",
                    userIdHintTextColor: Colors.purple,
                    userIdTextFieldPrefixIcon: (Icons.person),
                    userIdTextFieldPrefixIconColor: Colors.purple,
                    onUserIdValueChange: (value) {})),
            SignupTextFieldDecorator(
                child: SignupUserIdTextField(
                    useridcontroller: emailController,
                    userIdErrorText: "Email can not be empty",
                    userIdHintText: "Enter email id",
                    userIdHintTextColor: Colors.purple,
                    userIdTextFieldPrefixIcon: (Icons.person),
                    userIdTextFieldPrefixIconColor: Colors.purple,
                    onUserIdValueChange: (value) {})),
            SignupTextFieldDecorator(
                child: SignupUserIdTextField(
                    useridcontroller: mobileController,
                    userIdErrorText: "Mobile number can not be empty",
                    userIdHintText: "Enter mobile number",
                    userIdHintTextColor: Colors.purple,
                    userIdTextFieldPrefixIcon: (Icons.person),
                    userIdTextFieldPrefixIconColor: Colors.purple,
                    onUserIdValueChange: (value) {})),
            SignupTextFieldDecorator(
                child: SignupUserIdTextField(
                    useridcontroller: passwordController,
                    userIdErrorText: "Password can not be empty",
                    userIdHintText: "Enter password",
                    userIdHintTextColor: Colors.purple,
                    userIdTextFieldPrefixIcon: (Icons.person),
                    userIdTextFieldPrefixIconColor: Colors.purple,
                    onUserIdValueChange: (value) {})),
            SignupTextFieldDecorator(
                child: SignupUserIdTextField(
                    useridcontroller: confirmPasswordController,
                    userIdErrorText: "Password can not be empty",
                    userIdHintText: "Re-Enter password",
                    userIdHintTextColor: Colors.purple,
                    userIdTextFieldPrefixIcon: (Icons.person),
                    userIdTextFieldPrefixIconColor: Colors.purple,
                    onUserIdValueChange: (value) {})),
            //todo: for gender selection
            SignupTextFieldDecorator(
                child: GenderSelection()),
            CustomButton(
                buttonColor: MyTheme.loginButtonColor,
                buttontext: "Sign Up",
                textColor: Colors.white,
                handleButtonClick: () {}),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: const Text(
                    "Login Now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.purple),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}

