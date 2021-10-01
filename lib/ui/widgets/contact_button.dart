import 'package:flutter/material.dart';
import 'package:portofolio/shared/theme.dart';

class ContactButton extends StatelessWidget {
  const ContactButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18, left: 32, right: 32),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            width: 136,
            height: 44,
            child: TextButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email,
                    color: kWhiteColor,
                  ),
                  Text(
                    'Email Me',
                    style: whiteText.copyWith(fontSize: 14, fontWeight: medium),
                  ),
                ],
              ),
              style: TextButton.styleFrom(backgroundColor: kBlueColor),
              onPressed: () {},
            ),
          ),
          Container(
            height: 24,
            width: 24,
            margin: EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_whatsapp.png'))),
          ),
          Container(
            height: 24,
            width: 24,
            margin: EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/icon_github.png'))),
          )
        ],
      ),
    );
  }
}
