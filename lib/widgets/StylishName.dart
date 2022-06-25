import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class StylishName extends StatelessWidget {
  StylishName({
    Key? key,
    required this.inFooter,
  }) : super(key: key);
  bool inFooter;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(15), topLeft: Radius.circular(15)),
        color: inFooter ? Color.fromRGBO(77, 72, 72, 0.9) : Colors.black,
      ),
      alignment: Alignment.center,
      child: const Text(
        'GS',
        style: TextStyle(
            color: Colors.white, fontSize: 26, fontWeight: FontWeight.w400),
      ),
    );
  }
}
