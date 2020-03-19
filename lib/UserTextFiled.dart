import 'package:flutter/material.dart';

class UserTextFiled extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => UserTextFiledState();
}

class UserTextFiledState extends State<UserTextFiled> {
  final userController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    userController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: userController,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.perm_identity),
          labelText: "账号",
        ));
  }
}
