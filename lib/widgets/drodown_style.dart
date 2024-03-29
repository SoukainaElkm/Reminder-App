import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Item {
  const Item(this.name,this.icon);
  final String name;
  final Icon icon;
}

class _State extends State {
  TextEditingController nameController = TextEditingController();

  List users = [
    const Item('Android',Icon(Icons.android,color:  const Color(0xFF167F67),)),
    const Item('Flutter',Icon(Icons.flag,color:  const Color(0xFF167F67),)),
    const Item('ReactNative',Icon(Icons.format_indent_decrease,color:  const Color(0xFF167F67),)),
    const Item('iOS',Icon(Icons.mobile_screen_share,color:  const Color(0xFF167F67),)),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}