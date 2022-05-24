import 'package:flutter/material.dart';
import 'iconfont.dart';

class CategoryIcon extends StatelessWidget {
  Color? color;
  String? iconName;
  double size;
  double padding;

  CategoryIcon({Key? key,
    this.color,
    this.iconName,
    this.size = 30,
    this.padding = 10
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
          color: color,
          padding: EdgeInsets.all(padding),
          child: IconFont(
              color: Colors.white, iconName: iconName, size: size)),
    );
  }
}