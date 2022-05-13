import 'package:flutter/material.dart';
import 'package:shopping_app/view/custom_widget/my_theme.dart';
class TextFieldDecorator extends StatelessWidget {
  final Widget child;
  const TextFieldDecorator({
    Key? key, required this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      margin:const EdgeInsets.symmetric(vertical: 15),
      padding:const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
      decoration: BoxDecoration(color: MyTheme.loginPagBoxColor,borderRadius: BorderRadius.circular(20)),
      child: child,
      // child: TextFormField(
      //   controller: useridcontroller,
      //   validator: (value){
      //     if(value!.isEmpty){
      //       return userIdErrorText;
      //     }else{
      //       return null;
      //     }
      //   },
      //   decoration: InputDecoration(
      //     hintText: userIdHintText,
      //     hintStyle: TextStyle(color: userIdHintTextColor),
      //     border: InputBorder.none,
      //     prefixIcon: Icon(
      //       userIdTextFieldPrefixIcon,
      //       color: userIdTextFieldPrefixIconColor,
      //     ),
      //   ),
      // ),
    );
  }
}
