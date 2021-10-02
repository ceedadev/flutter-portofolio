import 'package:flutter/material.dart';
import 'package:portofolio/shared/theme.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //TODO : PHOTO HERE
      margin: EdgeInsets.symmetric(horizontal: 32),
      width: double.infinity,
      height: 123,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: Colors.grey),
    );
  }
}
