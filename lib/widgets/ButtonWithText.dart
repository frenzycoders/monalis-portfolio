import 'dart:html';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class ButtonWithText extends StatelessWidget {
  ButtonWithText({
    Key? key,
    required this.skillName,
  }) : super(key: key);
  String skillName;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 2,
          color: Colors.black,
        ),
      ),
      padding: const EdgeInsets.all(8),
      child: Text(
        skillName,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
