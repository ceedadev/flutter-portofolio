import 'package:flutter/material.dart';
import 'package:portofolio/shared/theme.dart';

class ProjectItem extends StatelessWidget {
  final String repositoryUrl;
  final String itemUrl;
  final String itemKind;
  // item kind ['web','play','figma']

  const ProjectItem({
    Key? key,
    required this.repositoryUrl,
    required this.itemUrl,
    required this.itemKind,
  }) : super(key: key);

  itemIcon() {
    switch (itemKind) {
      case 'web':
        return 'assets/icon_chrome.png';
      case 'play':
        return 'assets/icon_google_play.png';
      case 'figma':
        return 'assets/icon_figma.png';
    }
  }

  itemText() {
    switch (itemKind) {
      case 'web':
        return 'View API Doc';
      case 'play':
        return 'View Play Store';
      case 'figma':
        return 'View Figma';
    }
  }
  //TODO : ADD URL AND GESTURE DETECTION

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 18),
            width: double.infinity,
            height: 180,
            // TODO: ADD IMAGE AND URL FOR CONTAINER BOX
            decoration: BoxDecoration(color: Colors.grey),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icon_git.png'),
                      ),
                    ),
                  ),
                  Text('View Repository', style: whiteText)
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(itemIcon()),
                      ),
                    ),
                  ),
                  Text(itemText(), style: whiteText)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
