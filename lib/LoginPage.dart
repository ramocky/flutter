//初始登录页面screen
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Avatar.dart';
import 'HomeScreen.dart';
import 'PassWordTextFiled.dart';
import 'UserTextFiled.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

//登录页状态
class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              // 触摸收起键盘
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: SafeArea(
              child: Align(
                alignment: Alignment.center,
                child: ListView(
                  children: <Widget>[
                    Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 40),
                      ),
                    ),
                    Column(
                      children: <Widget>[Avatar()],
                    ),
                    Center(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                        child: Column(
                          children: <Widget>[UserTextFiled()],
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        child: Column(
                          children: <Widget>[PassWordTextFile()],
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RaisedButton(
                          padding: EdgeInsets.symmetric(
                              horizontal: 150, vertical: 15),
                          color: Colors.pink,
                          highlightColor: Colors.blue[700],
                          colorBrightness: Brightness.dark,
                          splashColor: Colors.grey,
                          child: Text("登录"),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
