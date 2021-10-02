import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:portofolio/shared/theme.dart';

class SkillItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final double percentage;
  const SkillItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: whiteText.copyWith(fontSize: 16, fontWeight: regular),
              ),
              Text(
                subtitle,
                style: whiteText,
              )
            ],
          ),
          SizedBox(height: 6),
          LinearPercentIndicator(
            lineHeight: 8,
            percent: percentage,
            backgroundColor: kGreenDarkColor,
            progressColor: kGreenColor,
          )
        ],
      ),
    );
  }
}
