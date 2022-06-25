import 'package:flutter/material.dart';

class StylishButton extends StatelessWidget {
  const StylishButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.black),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/git.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text('Github')
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 26,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.black),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/linkedin.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text('LinkedIn')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
