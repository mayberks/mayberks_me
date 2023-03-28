import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayberks_me/components/animated_text.dart';
import 'package:mayberks_me/components/heading.dart';
import 'package:mayberks_me/components/rounded_image.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/utilities/profile_data.dart';
import 'package:mayberks_me/utilities/responsive.dart';
import 'package:mayberks_me/utilities/urls.dart';

/// the discord setup portfolio header section.
class DiscordSetupsPortfolioHeader extends StatelessWidget {
  const DiscordSetupsPortfolioHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        roundedImage(context, image: ProfileData.profileImage),
        isDesktop(context) ? heightFifteen : heightTen,
        heading(
          ProfileData.profileName,
          context,
          fontfamily: 'Sora',
          weight: FontWeight.w900,
        ),
        isDesktop(context) ? heightTen : heightTen,
        animatedText(
          ProfileData.jobs,
          context,
          fontfamily: 'Sora',
          weight: FontWeight.w200,
        ),
        isDesktop(context) ? heightSeventeen : heightSeventeen,
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
                  height: isDesktop(context) ? 25 : 20,
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
                  height: isDesktop(context) ? 25 : 20,
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
                  height: isDesktop(context) ? 25 : 20,
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
                  height: isDesktop(context) ? 25 : 20,
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
