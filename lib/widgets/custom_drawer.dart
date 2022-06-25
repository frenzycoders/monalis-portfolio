import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:monalisa/widgets/StylishName.dart';

import 'IconButton.dart';

class CustomDrawer extends StatelessWidget {
  CustomDrawer({
    Key? key,
    required this.closeDrawer,
  }) : super(key: key);
  Function closeDrawer;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                DrawerHeader(
                  child: Container(
                    alignment: Alignment.center,
                    child: StylishName(inFooter: false),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 30),
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () {
                      closeDrawer();
                    },
                    icon: Icon(Icons.clear),
                  ),
                )
              ],
            ),
            ListTile(
              leading: Image.asset(
                "assets/projects.png",
                height: 40,
                width: 40,
              ),
              title: const Text(
                'Projects',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Image.asset(
                "assets/male.png",
                height: 40,
                width: 40,
              ),
              title: const Text(
                'About me',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Image.asset(
                "assets/blogs.png",
                height: 40,
                width: 40,
              ),
              title: const Text(
                'Blogs',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
            ),
            ListTile(
              leading: Image.asset(
                "assets/contact.png",
                height: 40,
                width: 40,
              ),
              title: const Text(
                'Contact me',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomIconButton(
                    imgUrl: "assets/git.png",
                    onTap: () {},
                  ),
                  CustomIconButton(
                    imgUrl: "assets/linkedin.png",
                    onTap: () {},
                  ),
                  CustomIconButton(
                    imgUrl: "assets/twitter.png",
                    onTap: () {},
                  ),
                  CustomIconButton(
                    imgUrl: "assets/ig.png",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
