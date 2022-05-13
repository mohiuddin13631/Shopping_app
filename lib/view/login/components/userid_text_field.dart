import 'package:flutter/material.dart';
class UserIdTextField extends StatelessWidget {
  const UserIdTextField({
    Key? key,
    required this.useridcontroller,
    required this.userIdErrorText,
    required this.userIdHintText,
    required this.userIdHintTextColor,
    required this.userIdTextFieldPrefixIcon,
    required this.userIdTextFieldPrefixIconColor,
    required this.onUserIdValueChange,
  }) : super(key: key);

  final TextEditingController useridcontroller;
  final String userIdErrorText;
  final String userIdHintText;
  final Color userIdHintTextColor;
  final IconData userIdTextFieldPrefixIcon;
  final Color userIdTextFieldPrefixIconColor;
  final Function onUserIdValueChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: useridcontroller,
      validator: (value) {
        if (value!.isEmpty) {
          return userIdErrorText;
        } else {
          return null;
        }
      },
      onChanged: (value){
        onUserIdValueChange(value);
      },
      cursorColor: Theme.of(context).colorScheme.secondary,
      style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      decoration: InputDecoration(
        hintText: userIdHintText,
        hintStyle: TextStyle(color: userIdHintTextColor),
        border: InputBorder.none,
        prefixIcon: Icon(
          userIdTextFieldPrefixIcon,
          color: userIdTextFieldPrefixIconColor,
        ),
      ),
    );
  }
}
