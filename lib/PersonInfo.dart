import 'package:flutter/material.dart';

class PersonInfo extends StatefulWidget {
  @override
  PersonInfoState createState() => new PersonInfoState();
}

class PersonInfoState extends State<PersonInfo> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("个人信息"),
          backgroundColor: Colors.blue, //设置appbar背景颜色
          centerTitle: true, //设置标题是否局中
        ),
        body: new Center(
          child: new Text('个人信息'),
        ),
      ),
    );
  }
}
