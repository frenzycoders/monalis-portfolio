import 'package:flutter/material.dart';
import 'package:monalisa/models/portfolio_model.dart';
import 'package:monalisa/widgets/BlogItem.dart';
import 'package:monalisa/widgets/section_header.dart';

class BlogsWidget extends StatelessWidget {
  BlogsWidget({
    Key? key,
    required this.blogs,
  }) : super(key: key);

  List<Blogs> blogs;

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
            child: blogs.isEmpty
                ? Container(
                    alignment: Alignment.center,
                    child: Text('No Blogs Found'),
                  )
                : ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return BlogItem(
                        blog: blogs[index],
                      );
                    },
                    itemCount: blogs.length,
                  ),
          )
        ],
      ),
    );
  }
}
