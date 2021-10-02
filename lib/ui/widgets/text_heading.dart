import 'package:flutter/material.dart';
import 'package:portofolio/shared/theme.dart';

class TextHeading extends StatelessWidget {
  final String text;

  const TextHeading({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 32, bottom: 18),
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Text(
        text,
        style: whiteText.copyWith(fontSize: 18, fontWeight: bold),
      ),
    );
  }
}
