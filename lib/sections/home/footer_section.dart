import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayberks_me/components/medium_text.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/utilities/responsive.dart';
import 'package:mayberks_me/utilities/urls.dart';

/// the footer section.
class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: whiteColor,
          thickness: 0.4,
        ),
        isBigDesktop(context) ? heightTwenty : heightTen,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                launchGithub();
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: SvgPicture.asset(
                  'assets/images/github.svg',
                  height: isDesktop(context) ? 25 : 15,
                  color: whiteColor,
                ),
              ),
            ),
            isDesktop(context) ? widthFifteen : widthTen,
            GestureDetector(
              onTap: () {
                launchDiscord();
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: SvgPicture.asset(
                  'assets/images/discord.svg',
                  height: isDesktop(context) ? 25 : 15,
                  color: whiteColor,
                ),
              ),
            ),
            isDesktop(context) ? widthFifteen : widthTen,
            GestureDetector(
              onTap: () {
                launchWhatsapp();
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: SvgPicture.asset(
                  'assets/images/whatsapp.svg',
                  height: isDesktop(context) ? 25 : 15,
                  color: whiteColor,
                ),
              ),
            ),
            isDesktop(context) ? widthFifteen : widthTen,
            GestureDetector(
              onTap: () {
                launchCompany();
              },
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: SvgPicture.asset(
                  'assets/images/link.svg',
                  height: isDesktop(context) ? 25 : 15,
                  color: whiteColor,
                ),
              ),
            ),
          ],
        ),
        isBigDesktop(context) ? heightTwenty : heightTen,
        mediumText(
          '© mayberks.me. All rights reserved.',
          context,
          color: whiteColor,
          size: isMobile(context) ? 10 : 8,
        ),
      ],
    );
  }
}
