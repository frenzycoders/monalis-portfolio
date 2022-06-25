import 'package:flutter/material.dart';

class BlogItem extends StatefulWidget {
  const BlogItem({Key? key}) : super(key: key);

  @override
  State<BlogItem> createState() => _BlogItemState();
}

class _BlogItemState extends State<BlogItem> {
  bool showShadow = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          showShadow = !showShadow;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 100,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10), //border corner radius
            boxShadow: [
              BoxShadow(
                color: showShadow
                    ? Colors.grey.withOpacity(0.5)
                    : Colors.grey.withOpacity(0.2), //color of shadow
                spreadRadius: 5, //spread radius
                blurRadius: 7, // blur radius
                offset: Offset(0, 2), // changes position of shadow
              ),
              //you can set more BoxShadow() here
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    'blogs title',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 0, bottom: 5),
                  child: const Text(
                    'WebRTC based video conferening app. Web app for video conferencing',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 0, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/calendar.png",
                        height: 30,
                        width: 30,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        '10-20-2022-01-13-2023',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 0, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/links.png",
                              height: 30,
                              width: 30,
                            ),
                            const Text(
                              ' visit',
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "assets/code.png",
                              height: 30,
                              width: 30,
                            ),
                            const Text(
                              ' source',
                              style: TextStyle(
                                color: Colors.green,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
