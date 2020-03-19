//底部导航栏
import 'package:flutter/material.dart';
import 'package:flutterapp/HotMovie.dart';
import 'package:flutterapp/ComingSoon.dart';
import 'package:flutterapp/PersonInfo.dart';

class Bottom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomState();
}


class BottomState extends State<Bottom> {
  int _currentIndex = 0;
  final List<Widget> pages = [HotMovie(), page2(), PersonInfo()];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.whatshot), title: Text('随机好图')),
            BottomNavigationBarItem(
                icon: Icon(Icons.image), title: Text('高清大图')),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), title: Text('个人信息'))
          ],
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
//            print(index);
          },
        ),
        body: pages[_currentIndex]);
  }
}
