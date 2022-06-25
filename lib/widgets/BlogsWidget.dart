import 'package:flutter/material.dart';
import 'package:monalisa/widgets/BlogItem.dart';
import 'package:monalisa/widgets/section_header.dart';

class BlogsWidget extends StatelessWidget {
  const BlogsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SectionHeader(
            imgUrl: "assets/blogs.png",
            headerName: "Blogs",
            seeAllUrl: "",
            showSeeAll: true,
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 250,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return BlogItem();
              },
              itemCount: 4,
            ),
          )
        ],
      ),
    );
  }
}
