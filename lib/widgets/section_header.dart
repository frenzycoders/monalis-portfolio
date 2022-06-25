import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  SectionHeader({
    Key? key,
    required this.imgUrl,
    required this.headerName,
    required this.seeAllUrl,
    required this.showSeeAll,
  }) : super(key: key);
  String imgUrl;
  String headerName;
  String seeAllUrl;
  bool showSeeAll;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                imgUrl,
                height: 40,
                width: 40,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                headerName,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 27,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              showSeeAll
                  ? Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('SEE ALL'),
                      ),
                    )
                  : Container(),
            ],
          )
        ],
      ),
    );
  }
}
