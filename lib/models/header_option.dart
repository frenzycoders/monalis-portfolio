import 'package:flutter/cupertino.dart';

class HeaderOption {
  String name;
  String path;
  bool isSvg;
  Widget widget;
  HeaderOption({
    required this.name,
    required this.path,
    required this.isSvg,
    required this.widget,
  });
}
