import 'package:flutter/material.dart';
import 'package:portofolio/shared/theme.dart';
import 'package:portofolio/ui/widgets/tool_item.dart';

class Tools extends StatelessWidget {
  const Tools({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18),
      width: double.infinity,
      height: 130,
      child: ListView(
        padding: EdgeInsets.only(left: 32),
        scrollDirection: Axis.horizontal,
        children: [
          ToolItem(name: 'Visual Studio\nCode'),
          ToolItem(name: 'Git'),
          ToolItem(name: 'Android\nStudio'),
          ToolItem(name: 'Figma'),
        ],
      ),
    );
  }
}
