import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/components/heading.dart';
import 'package:mayberks_me/components/icon_button.dart';
import 'package:mayberks_me/components/medium_text.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/utilities/profile_data.dart';
import 'package:mayberks_me/utilities/urls.dart';

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
                'Hey!',
                context,
                color: greenColor,
                fontfamily: 'Epilogue',
                weight: FontWeight.w700,
              ),
              heightTen,
              smallText(
                ProfileData.aboutmeOne,
                context,
                align: TextAlign.justify,
                fontfamily: 'Epilogue',
                weight: FontWeight.w300,
              ),
              heightTen,
              smallText(
                ProfileData.aboutmeTwo,
                context,
                align: TextAlign.justify,
                fontfamily: 'Epilogue',
                weight: FontWeight.w300,
              ),
            ],
          ),
        ),
        heightTwenty,
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  launchSendMail();
                },
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: iconButton(
                    'Hey, hire me!',
                    'assets/images/mail.svg',
                    context,
                  ),
                ),
              ),
            ),
            widthFifteen,
            Expanded(
              child: GestureDetector(
                onTap: () {
                  launchDiscordDirect();
                },
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child:
                      iconButton('ayberkcakr#9861', 'assets/images/discord.svg', context),
                ),
              ),
            ),
          ],
        ),
        heightFifteen,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            mediumText(
              "Some places I've worked with",
              weight: FontWeight.w700,
              fontfamily: 'Epilogue',
              context,
            ),
          ],
        ),
        heightFifteen,
      ],
    );
  }
}
