import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:monalisa/configs/responsive.dart';
import 'package:monalisa/widgets/StylishName.dart';

class HeaderWidget extends StatefulWidget {
  HeaderWidget({Key? key, required this.openDrawer}) : super(key: key);
  Function openDrawer;

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  bool ishover = false;

  changeHover() {
    setState(() {
      ishover = !ishover;
    });
  }

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StylishName(inFooter: false),
            if (Responsive.isMobile(context))
              InkWell(
                onTap: () {
                  widget.openDrawer();
                },
                child: Image.asset(
                  "assets/menu.png",
                  height: 50,
                  width: 50,
                ),
              )
            else
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Projects',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'About me',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      'Blogs',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onHover: (value) {
                      changeHover();
                    },
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: ishover ? Colors.black : Colors.white,
                        border: Border.all(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Text(
                        'Contact',
                        style: TextStyle(
                          color: ishover == true ? Colors.white : Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}
