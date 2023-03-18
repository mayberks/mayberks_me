import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/components/heading.dart';
import 'package:mayberks_me/components/icon_button.dart';
import 'package:mayberks_me/components/medium_text.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/utilities/profile_data.dart';

/// the about me section.
class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heading(
                'Het!',
                context,
                color: greenColor,
              ),
              heightTen,
              smallText(
                ProfileData.aboutMe,
                context,
                align: TextAlign.justify,
              ),
            ],
          ),
        ),
        heightTwenty,
        Row(
          children: [
            Expanded(
              child: iconButton(
                  'Hey, hire me!', 'assets/images/flutter_logo.png', context),
            ),
            widthFifteen,
            Expanded(
              child: iconButton(
                  'ayberkcakr#9861', 'assets/images/flutter_logo.png', context),
            ),
          ],
        ),
        heightTen,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            mediumText("Some places I've worked with", context),
          ],
        ),
        heightTen,
      ],
    );
  }
}