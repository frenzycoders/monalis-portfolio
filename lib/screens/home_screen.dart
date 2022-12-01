import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monalisa/configs/responsive.dart';
import 'package:monalisa/home_controller.dart';
import 'package:monalisa/models/portfolio_model.dart';
import 'package:monalisa/widgets/AboutMe.dart';
import 'package:monalisa/widgets/BlogsWidget.dart';
import 'package:monalisa/widgets/ContactWidget.dart';
import 'package:monalisa/widgets/FlatButton.dart';
import 'package:monalisa/widgets/StylishName.dart';
import 'package:monalisa/widgets/banner_widget.dart';
import 'package:monalisa/widgets/custom_drawer.dart';
import 'package:monalisa/widgets/header_widget.dart';
import 'package:monalisa/widgets/projects_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends GetView<HomeController> {
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
      body: Obx(() {
        return controller.isLoading.isTrue
            ? Container(
                alignment: Alignment.center,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 20.0,
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText('Loading'),
                    ],
                    isRepeatingAnimation: true,
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              )
            : controller.isError.isTrue
                ? Container(
                    alignment: Alignment.center,
                    child: Text(
                      controller.errorMessage,
                      style: GoogleFonts.poppins(),
                      textAlign: TextAlign.center,
                    ),
                  )
                : ListView(
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
                              left:
                                  MediaQuery.of(context).size.width * 10 / 100,
                              right:
                                  MediaQuery.of(context).size.width * 10 / 100),
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
                              left: width * 25 / 100,
                              right: width * 25 / 100,
                              top: 150),
                          alignment: Alignment.topLeft,
                          child: BannerWidget(
                            name:
                                controller.portfolioModel.value.name as String,
                            github: controller.portfolioModel.value.githubUrl
                                as String,
                            linkedIn: controller
                                .portfolioModel.value.linkedinUrl as String,
                          ),
                        ),
                      if (Responsive.isTablet(context))
                        Container(
                          margin: EdgeInsets.only(
                              left:
                                  MediaQuery.of(context).size.width * 10 / 100,
                              right:
                                  MediaQuery.of(context).size.width * 10 / 100),
                          child: BannerWidget(
                            name:
                                controller.portfolioModel.value.name as String,
                            github: controller.portfolioModel.value.githubUrl
                                as String,
                            linkedIn: controller
                                .portfolioModel.value.linkedinUrl as String,
                          ),
                        ),
                      if (Responsive.isMobile(context))
                        Container(
                          margin: EdgeInsets.only(
                              left: width * 1 / 100, right: width * 1 / 100),
                          child: Padding(
                            padding: EdgeInsets.all(25.0),
                            child: BannerWidget(
                              name: controller.portfolioModel.value.name
                                  as String,
                              github: controller.portfolioModel.value.githubUrl
                                  as String,
                              linkedIn: controller
                                  .portfolioModel.value.linkedinUrl as String,
                            ),
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
                          child: ProjectWidget(
                              projects: controller.portfolioModel.value.projects
                                  as List<Projects>),
                        ),
                      if (Responsive.isTablet(context))
                        Container(
                          margin: EdgeInsets.only(
                              left:
                                  MediaQuery.of(context).size.width * 10 / 100,
                              right:
                                  MediaQuery.of(context).size.width * 10 / 100),
                          child: ProjectWidget(
                              projects: controller.portfolioModel.value.projects
                                  as List<Projects>),
                        ),
                      if (Responsive.isMobile(context))
                        Container(
                          margin: EdgeInsets.only(
                              left: width * 1 / 100, right: width * 1 / 100),
                          child: Padding(
                            padding: EdgeInsets.all(25.0),
                            child: ProjectWidget(
                              projects: controller.portfolioModel.value.projects
                                  as List<Projects>,
                            ),
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
                              left:
                                  MediaQuery.of(context).size.width * 10 / 100,
                              right:
                                  MediaQuery.of(context).size.width * 10 / 100),
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
                          child: CustomFlatButton(
                            onTap: () async {
                              await launchUrl(Uri.parse(controller
                                  .portfolioModel.value.resumeLink as String));
                            },
                            text: 'DOWNLOAD RESUME',
                          ),
                        ),
                      if (Responsive.isTablet(context))
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                              left:
                                  MediaQuery.of(context).size.width * 10 / 100,
                              right:
                                  MediaQuery.of(context).size.width * 10 / 100),
                          child: CustomFlatButton(
                              onTap: () async {
                                await launchUrl(Uri.parse(controller
                                    .portfolioModel
                                    .value
                                    .resumeLink as String));
                              },
                              text: 'DOWNLOAD RESUME'),
                        ),
                      if (Responsive.isMobile(context))
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                              left: width * 1 / 100, right: width * 1 / 100),
                          child: Padding(
                            padding: EdgeInsets.all(25.0),
                            child: CustomFlatButton(
                                onTap: () async {
                                  await launchUrl(Uri.parse(controller
                                      .portfolioModel
                                      .value
                                      .resumeLink as String));
                                },
                                text: 'DOWNLOAD RESUME'),
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
                          child: BlogsWidget(
                              blogs: controller.portfolioModel.value.blogs
                                  as List<Blogs>),
                        ),
                      if (Responsive.isTablet(context))
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                              left:
                                  MediaQuery.of(context).size.width * 10 / 100,
                              right:
                                  MediaQuery.of(context).size.width * 10 / 100),
                          child: BlogsWidget(
                              blogs: controller.portfolioModel.value.blogs
                                  as List<Blogs>),
                        ),
                      if (Responsive.isMobile(context))
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                              left: width * 1 / 100, right: width * 1 / 100),
                          child: Padding(
                            padding: EdgeInsets.all(25.0),
                            child: BlogsWidget(
                                blogs: controller.portfolioModel.value.blogs
                                    as List<Blogs>),
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
                          child: ContactWidget(
                            contact: controller.portfolioModel.value.contact
                                as Contact,
                            github: controller.portfolioModel.value.githubUrl
                                as String,
                            linkdin: controller.portfolioModel.value.linkedinUrl
                                as String,
                          ),
                        ),
                      if (Responsive.isTablet(context))
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                              left:
                                  MediaQuery.of(context).size.width * 10 / 100,
                              right:
                                  MediaQuery.of(context).size.width * 10 / 100),
                          child: ContactWidget(
                            contact: controller.portfolioModel.value.contact
                                as Contact,
                            github: controller.portfolioModel.value.githubUrl
                                as String,
                            linkdin: controller.portfolioModel.value.linkedinUrl
                                as String,
                          ),
                        ),
                      if (Responsive.isMobile(context))
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(
                              left: width * 1 / 100, right: width * 1 / 100),
                          child: Padding(
                            padding: EdgeInsets.all(25.0),
                            child: ContactWidget(
                              contact: controller.portfolioModel.value.contact
                                  as Contact,
                              github: controller.portfolioModel.value.githubUrl
                                  as String,
                              linkdin: controller
                                  .portfolioModel.value.linkedinUrl as String,
                            ),
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
                                left: width * 25 / 100,
                                right: width * 25 / 100),
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
                                left: MediaQuery.of(context).size.width *
                                    10 /
                                    100,
                                right: MediaQuery.of(context).size.width *
                                    10 /
                                    100),
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
                                  left: width * 1 / 100,
                                  right: width * 1 / 100),
                              height: 200,
                              alignment: Alignment.topLeft,
                              child: StylishName(inFooter: true),
                            ),
                          ),
                        ),
                    ],
                  );
      }),
      endDrawer: CustomDrawer(closeDrawer: closeDrawer),
    );
  }
}
