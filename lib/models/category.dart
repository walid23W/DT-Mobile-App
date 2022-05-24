import 'dart:ui';
import 'package:flutter/material.dart';

class Category {

  String name;
  String icon;
  Color color;
  String imgName;

  Category(
      {
        required this.name,
        required this.icon,
        required this.color,
        required this.imgName,
      }
      );
}