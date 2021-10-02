import 'package:flutter/material.dart';
import 'package:portofolio/shared/theme.dart';

class ProfileDescription extends StatelessWidget {
  const ProfileDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 32, right: 32, top: 18),
      height: 102,
      width: double.infinity,
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit tristique tellus enim nec amet mauris nascetur viverra sodales. Turpis amet molestie quam ullamcorper. Feugiat lectus sed tem.',
        style: whiteText.copyWith(fontWeight: regular),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
