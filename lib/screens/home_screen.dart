import 'package:flutter/material.dart';
import 'package:monalisa/configs/responsive.dart';
import 'package:monalisa/widgets/AboutMe.dart';
import 'package:monalisa/widgets/BlogsWidget.dart';
import 'package:monalisa/widgets/ContactWidget.dart';
import 'package:monalisa/widgets/FlatButton.dart';
import 'package:monalisa/widgets/StylishName.dart';
import 'package:monalisa/widgets/banner_widget.dart';
import 'package:monalisa/widgets/custom_drawer.dart';
import 'package:monalisa/widgets/header_widget.dart';
import 'package:monalisa/widgets/projects_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  
  void openDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  void closeDrawer() {
    _scaffoldKey.currentState!.closeEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //Header View..........................
          if (Responsive.isDesktop(context))
            Container(
              margin: EdgeInsets.only(
                  left: width * 25 / 100, right: width * 25 / 100),
              child: HeaderWidget(
                openDrawer: openDrawer,
              ),
            ),
          if (Responsive.isTablet(context))
            Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 10 / 100,
                  right: MediaQuery.of(context).size.width * 10 / 100),
              child: HeaderWidget(
                openDrawer: openDrawer,
              ),
            ),
          if (Responsive.isMobile(context))
            Container(
              margin: EdgeInsets.only(
                  left: width * 1 / 100, right: width * 1 / 100),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: HeaderWidget(
                  openDrawer: openDrawer,
                ),
              ),
            ),

          // Banner View........................
          if (Responsive.isDesktop(context))
            Container(
              margin: EdgeInsets.only(
                  left: width * 25 / 100, right: width * 25 / 100, top: 150),
              alignment: Alignment.topLeft,
              child: BannerWidget(),
            ),
          if (Responsive.isTablet(context))
            Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 10 / 100,
                  right: MediaQuery.of(context).size.width * 10 / 100),
              child: BannerWidget(),
            ),
          if (Responsive.isMobile(context))
            Container(
              margin: EdgeInsets.only(
                  left: width * 1 / 100, right: width * 1 / 100),
              child: const Padding(
                padding: EdgeInsets.all(25.0),
                child: BannerWidget(),
              ),
            ),

          const SizedBox(
            height: 50,
          ),

          // Projects Section..................
          if (Responsive.isDesktop(context))
            Container(
              margin: EdgeInsets.only(
                  left: width * 25 / 100, right: width * 25 / 100),
              child: ProjectWidget(),
            ),
          if (Responsive.isTablet(context))
            Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 10 / 100,
                  right: MediaQuery.of(context).size.width * 10 / 100),
              child: ProjectWidget(),
            ),
          if (Responsive.isMobile(context))
            Container(
              margin: EdgeInsets.only(
                  left: width * 1 / 100, right: width * 1 / 100),
              child: const Padding(
                padding: EdgeInsets.all(25.0),
                child: ProjectWidget(),
              ),
            ),

          const SizedBox(
            height: 90,
          ),

          if (Responsive.isDesktop(context))
            Container(
              margin: EdgeInsets.only(
                  left: width * 25 / 100, right: width * 25 / 100),
              child: AboutMe(),
            ),
          if (Responsive.isTablet(context))
            Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 10 / 100,
                  right: MediaQuery.of(context).size.width * 10 / 100),
              child: AboutMe(),
            ),
          if (Responsive.isMobile(context))
            Container(
              margin: EdgeInsets.only(
                  left: width * 1 / 100, right: width * 1 / 100),
              child: const Padding(
                padding: EdgeInsets.all(25.0),
                child: AboutMe(),
              ),
            ),
          const SizedBox(
            height: 90,
          ),

          // Resume ........
          if (Responsive.isDesktop(context))
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                    left: width * 25 / 100, right: width * 25 / 100),
                child: CustomFlatButton(onTap: () {}, text: 'DOWNLOAD RESUME')),
          if (Responsive.isTablet(context))
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 10 / 100,
                  right: MediaQuery.of(context).size.width * 10 / 100),
              child: CustomFlatButton(onTap: () {}, text: 'DOWNLOAD RESUME'),
            ),
          if (Responsive.isMobile(context))
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  left: width * 1 / 100, right: width * 1 / 100),
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: CustomFlatButton(onTap: () {}, text: 'DOWNLOAD RESUME'),
              ),
            ),

          const SizedBox(
            height: 70,
          ),

          // Blogs section.....
          if (Responsive.isDesktop(context))
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  left: width * 25 / 100, right: width * 25 / 100),
              child: BlogsWidget(),
            ),
          if (Responsive.isTablet(context))
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 10 / 100,
                  right: MediaQuery.of(context).size.width * 10 / 100),
              child: BlogsWidget(),
            ),
          if (Responsive.isMobile(context))
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  left: width * 1 / 100, right: width * 1 / 100),
              child: const Padding(
                padding: EdgeInsets.all(25.0),
                child: BlogsWidget(),
              ),
            ),

          SizedBox(
            height: 90,
          ),

          // Contact Details.....

          // Blogs section.....
          if (Responsive.isDesktop(context))
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  left: width * 35 / 100, right: width * 25 / 100),
              child: ContactWidget(),
            ),
          if (Responsive.isTablet(context))
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 10 / 100,
                  right: MediaQuery.of(context).size.width * 10 / 100),
              child: ContactWidget(),
            ),
          if (Responsive.isMobile(context))
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  left: width * 1 / 100, right: width * 1 / 100),
              child: const Padding(
                padding: EdgeInsets.all(25.0),
                child: ContactWidget(),
              ),
            ),

          const SizedBox(
            height: 30,
          ),

          //Footer .....
          if (Responsive.isDesktop(context))
            Container(
              color: Colors.black,
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(
                    left: width * 25 / 100, right: width * 25 / 100),
                height: 200,
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: StylishName(inFooter: true),
                ),
              ),
            ),
          if (Responsive.isTablet(context))
            Container(
              color: Colors.black,
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 10 / 100,
                    right: MediaQuery.of(context).size.width * 10 / 100),
                height: 200,
                alignment: Alignment.topLeft,
                child: StylishName(inFooter: true),
              ),
            ),
          if (Responsive.isMobile(context))
            Container(
              color: Colors.black,
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Container(
                  margin: EdgeInsets.only(
                      left: width * 1 / 100, right: width * 1 / 100),
                  height: 200,
                  alignment: Alignment.topLeft,
                  child: StylishName(inFooter: true),
                ),
              ),
            ),
        ],
      ),
      endDrawer: CustomDrawer(closeDrawer: closeDrawer),
    );
  }
}
