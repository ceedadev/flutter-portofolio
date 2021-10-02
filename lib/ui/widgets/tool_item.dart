import 'package:flutter/material.dart';
import 'package:portofolio/shared/theme.dart';

class ToolItem extends StatelessWidget {
  final String name;
  // TODO : IMAGE URL
  const ToolItem({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 18),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            margin: EdgeInsets.only(bottom: 9),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18), color: Colors.grey),
          ),
          Container(
            width: 90,
            child: Text(
              name,
              style: whiteText.copyWith(fontSize: 12),
              textAlign: TextAlign.center,
              overflow: TextOverflow.clip,
            ),
          )
        ],
      ),
    );
  }
}
