import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PassWordTextFile extends StatelessWidget {
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: passController,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock),
        labelText: "密码",
      ),
      obscureText: true,
    );
  }
}
