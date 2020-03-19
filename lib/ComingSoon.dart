import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => page2State();
}

class page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue, //设置appbar背景颜色
            title: Text('高清好图'),
            centerTitle: true,
          ),
        )
    );
  }
}
