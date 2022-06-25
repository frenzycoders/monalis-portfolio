import 'package:flutter/material.dart';
import 'package:monalisa/widgets/Stylish_button.dart';
import 'package:monalisa/widgets/section_header.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          imgUrl: "assets/contact.png",
          headerName: "Contact",
          seeAllUrl: "",
          showSeeAll: false,
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'If you want to contact me then you can use below links.',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Gaurav Singh',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const Text(
          'gaurav4149singh@outlook.com',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
        const Text(
          '+91 9262715527',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        StylishButton(),
      ],
    );
  }
}
