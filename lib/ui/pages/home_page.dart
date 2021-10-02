import 'package:flutter/material.dart';
import 'package:portofolio/shared/theme.dart';
import 'package:portofolio/ui/widgets/contact_button.dart';
import 'package:portofolio/ui/widgets/profile_description.dart';
import 'package:portofolio/ui/widgets/profile_photo.dart';
import 'package:portofolio/ui/widgets/project_item.dart';
import 'package:portofolio/ui/widgets/skill_item.dart';
import 'package:portofolio/ui/widgets/text_heading.dart';
import 'package:portofolio/ui/widgets/text_title.dart';
import 'package:portofolio/ui/widgets/tools.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // MAIN COLUMN
            children: [
              TextTitle(),
              ProfilePhoto(),
              ProfileDescription(),
              ContactButton(),
              TextHeading(text: 'Selected Projects'),
              ProjectItem(
                  itemKind: 'web', repositoryUrl: 'test', itemUrl: 'test'),
              ProjectItem(
                  itemKind: 'play', repositoryUrl: 'test', itemUrl: 'test'),
              TextHeading(text: 'Tools and Skills'),
              Tools(),
              SkillItem(
                title: 'Dart',
                subtitle: 'Intermediate',
                percentage: 0.75,
              ),
              SkillItem(
                title: 'Flutter',
                subtitle: 'Experienced',
                percentage: 0.8,
              ),
              SkillItem(
                title: 'Python',
                subtitle: 'Experienced',
                percentage: 0.9,
              ),
              SkillItem(
                title: 'FastAPI',
                subtitle: 'Learning',
                percentage: 0.6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
