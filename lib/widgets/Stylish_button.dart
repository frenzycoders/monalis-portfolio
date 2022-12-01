import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StylishButton extends StatelessWidget {
  StylishButton({
    Key? key,
    required this.github,
    required this.linkedin,
  }) : super(key: key);
  String github;
  String linkedin;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () async {
            await launchUrl(Uri.parse(github));
          },
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.black),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/git.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text('Github')
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 26,
        ),
        InkWell(
          onTap: () async {
            await launchUrl(Uri.parse(linkedin));
          },
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.black),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/linkedin.png",
                  height: 20,
                  width: 20,
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text('LinkedIn')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
