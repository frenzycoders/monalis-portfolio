import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:monalisa/configs/responsive.dart';
import 'package:monalisa/widgets/Stylish_button.dart';

class BannerWidget extends StatelessWidget {
  BannerWidget({
    Key? key,
    required this.name,
    required this.github,
    required this.linkedIn,
  }) : super(key: key);
  String name;
  String linkedIn;
  String github;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context) || Responsive.isTablet(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Hello! Hola! Bonjour! Namste! ',
                  style: TextStyle(
                    fontSize: Responsive.isDesktop(context) ||
                            Responsive.isTablet(context)
                        ? 40
                        : 26,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Image.asset(
                  "assets/male.png",
                  height: 40,
                  width: 40,
                ),
              ],
            ),
          if (Responsive.isMobile(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 8,
                  child: Text(
                    'Hello! Hola! Bonjour! Namste! ',
                    style: TextStyle(
                      fontSize: Responsive.isDesktop(context) ||
                              Responsive.isTablet(context)
                          ? 36
                          : 30,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Image.asset(
                  "assets/male.png",
                  height: 40,
                  width: 40,
                ),
              ],
            ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi! I\'m ',
                style: TextStyle(
                  fontSize: Responsive.isMobile(context) ? 26 : 30.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
              DefaultTextStyle(
                style: TextStyle(
                  fontSize: Responsive.isMobile(context) ? 26 : 30.0,
                  fontFamily: 'Agne',
                ),
                child: AnimatedTextKit(
                  repeatForever: false,
                  animatedTexts: [
                    TypewriterAnimatedText(name,
                        speed: Duration(milliseconds: 100),
                        textStyle: TextStyle(fontWeight: FontWeight.w400)),
                  ],
                  onTap: () {
                    print("Tap Event");
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(width: 0.0, height: 50.0),
                Text(
                  'I\'m',
                  style: TextStyle(
                      fontSize: Responsive.isMobile(context) ? 23 : 27.0,
                      fontWeight: FontWeight.w900),
                ),
                const SizedBox(width: 10.0, height: 50.0),
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: Responsive.isMobile(context) ? 21 : 26.0,
                    fontFamily: 'Agne',
                  ),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      RotateAnimatedText('STUDENT'),
                      RotateAnimatedText('FULL STACK DEVELOPER'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'I like software development, exploring tech and playing with nodejs & flutter.',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
          ),
          const SizedBox(
            height: 26,
          ),
          StylishButton(
            github: github,
            linkedin: linkedIn,
          ),
        ],
      ),
    );
  }
}
