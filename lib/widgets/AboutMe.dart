import 'package:flutter/material.dart';
import 'package:monalisa/widgets/section_header.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          imgUrl: "assets/male.png",
          headerName: "About Me",
          seeAllUrl: "",
          showSeeAll: false,
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Hi! I\'m Gaurav Singh. I am a Full Stack Developer currently pursuing my MCA from Chandigarh University!',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'I like to design and develop interesting things. I am a fullstack developer.',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'I also like travelling and adventure stuff. If you liked my work then feel free to contact me.',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        )
      ],
    );
  }
}
