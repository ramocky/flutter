import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:dio/dio.dart';

Dio dio = new Dio();

class HotMovie extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HotMovieState();
}

void getData() async {
  var clientId = '2615496678d2117f6972793f47952d4a4ef56618054fc091227354ac6c0e9c1e';
  try {
    var getUrl = 'https://api.unsplash.com/photos/random/?client_id=' + clientId + '&count=30';
    Response response = await Dio().get(getUrl);
    for (int i = 0; i <= response.data.length; i++) {
      print(response.data[0].urls.small);
    }
  } catch (e) {
    print('error');
  }
}

Widget buildGrid() {
  return new GridView(
      padding: const EdgeInsets.all(4.0),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 3,
        crossAxisSpacing: 4,
        childAspectRatio: 0.7,
      ),
      children: _buildGridTileList(21));
}

List<Container> _buildGridTileList(int count) {
  return new List<Container>.generate(
      count, (int index) => new Container(child: new Image.network('https://api.isoyu.com/beibei_images.asp')));
}

class HotMovieState extends State<HotMovie> {
  @override
  Widget build(BuildContext context) {
    getData();
    ScreenUtil.init(context, width: 1920, height: 1080, allowFontScaling: true);
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue, //设置appbar背景颜色
              title: Text('随机好图'),
              centerTitle: true,
            ),
            body: new Container(child: buildGrid())));
  }
}
