import 'package:flutter/material.dart';
import 'package:monalisa/models/portfolio_model.dart';
import 'package:monalisa/widgets/Stylish_button.dart';
import 'package:monalisa/widgets/section_header.dart';

class ContactWidget extends StatelessWidget {
  ContactWidget({
    Key? key,
    required this.contact,
    required this.github,
    required this.linkdin,
  }) : super(key: key);
  Contact contact;
  String linkdin;
  String github;
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
        Text(
          contact.message as String,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          contact.name as String,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        Text(
          contact.email as String,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
        Text(
          contact.number as String,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        StylishButton(
          github: github,
          linkedin: linkdin,
        ),
      ],
    );
  }
}
