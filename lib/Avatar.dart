import 'package:flutter/material.dart';

class Avatar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AvatarState();
}

class AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundImage: NetworkImage(
          'http://wx1.sinaimg.cn/mw600/007oy8BFgy1gcddv1s0tfj30u013zdo9.jpg'),
    );
  }
}
