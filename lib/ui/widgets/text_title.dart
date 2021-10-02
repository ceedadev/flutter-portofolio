import 'package:flutter/material.dart';
import 'package:portofolio/shared/theme.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 32, left: 32, right: 32, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hi, I'm Armanda Arif",
            style: blueText.copyWith(fontSize: 18, fontWeight: bold),
          ),
          SizedBox(height: 8),
          Text(
            'Full Stack\nFastAPI - Flutter Developer',
            style: whiteText.copyWith(fontSize: 18, fontWeight: bold),
          ),
        ],
      ),
    );
  }
}
