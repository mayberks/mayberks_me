import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayberks_me/components/heading.dart';
import 'package:mayberks_me/components/rounded_image.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/utilities/profile_data.dart';
import 'package:mayberks_me/utilities/responsive.dart';
import 'package:mayberks_me/utilities/urls.dart';

class PortfolioHeader extends StatelessWidget {
  const PortfolioHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        roundedImage(context, image: ProfileData.profileImage),
        isDesktop(context) ? heightFifteen : heightTen,
        heading(ProfileData.profileName, context),
        isDesktop(context) ? heightTen : heightFour,
        smallText(ProfileData.job, context),
        isDesktop(context) ? heightTwenty : heightTen,
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
                  'svg/github.svg',
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
                  'svg/discord.svg',
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
                  'svg/whatsapp.svg',
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
                  'svg/link.svg',
                  height: isDesktop(context) ? 25 : 15,
                  color: whiteColor,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
