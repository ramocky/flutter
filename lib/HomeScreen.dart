import 'package:flutter/material.dart';

import 'BottomBar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
        bottomNavigationBar: Bottom(),
        body: SafeArea(
          child: ListView(
            children: <Widget>[],
          ),
        )));
  }
}
