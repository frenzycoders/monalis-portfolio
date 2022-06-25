import 'package:flutter/material.dart';
import 'package:monalisa/widgets/project_item.dart';
import 'package:monalisa/widgets/section_header.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SectionHeader(
            imgUrl: "assets/projects.png",
            headerName: "Projects",
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
                return ProjectItem();
              },
              itemCount: 4,
            ),
          )
        ],
      ),
    );
  }
}
