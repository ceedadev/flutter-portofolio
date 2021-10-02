import 'package:flutter/material.dart';
import 'package:portofolio/shared/theme.dart';
import 'package:portofolio/ui/widgets/contact_button.dart';
import 'package:portofolio/ui/widgets/project_item.dart';
import 'package:portofolio/ui/widgets/text_heading.dart';

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
              Container(
                margin: EdgeInsets.only(top: 32, left: 32, right: 32),
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
              ),
              SizedBox(height: 16),
              Container(
                //PHOTO HERE
                margin: EdgeInsets.symmetric(horizontal: 32),
                width: double.infinity,
                height: 123,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    color: Colors.grey),
              ),
              Container(
                margin: EdgeInsets.only(left: 32, right: 32, top: 18),
                height: 102,
                width: double.infinity,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit tristique tellus enim nec amet mauris nascetur viverra sodales. Turpis amet molestie quam ullamcorper. Feugiat lectus sed tem.',
                  style: whiteText.copyWith(fontWeight: regular),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(height: 18),
              ContactButton(),
              TextHeading(text: 'Selected Projects'),
              ProjectItem(
                itemKind: 'web',
                repositoryUrl: 'test',
                itemUrl: 'test',
              ),
              ProjectItem(
                itemKind: 'play',
                repositoryUrl: 'test',
                itemUrl: 'test',
              ),
              TextHeading(text: 'Tools and Skills'),
            ],
          ),
        ),
      ),
    );
  }
}
