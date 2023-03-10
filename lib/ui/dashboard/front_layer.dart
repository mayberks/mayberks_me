import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/components/dashboard_hire_discord_button.dart';
import 'package:mayberks_me/components/dashboard_profile_circle.dart';
import 'package:mayberks_me/components/dashboard_profile_social_media.dart';
import 'package:mayberks_me/components/dashboard_some_places_text.dart';
import 'package:mayberks_me/components/dashobard_hey_text.dart';
import 'package:mayberks_me/constants/extensions.dart';

import '../../components/dashboard_profile_name_text.dart';

class DashboardFrontLayer extends StatelessWidget {
  const DashboardFrontLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.dynamicHeight(0.17),
        ),
        SizedBox(
          height: context.dynamicHeight(0.15),
          child: const DashboardProfileCircle(),
        ),
        SizedBox(
          height: context.dynamicHeight(0.02),
        ),
        const DashboardProfileNameText(),
        SizedBox(
          height: context.dynamicHeight(0.035),
        ),
        const DashboardProfileSocialMedia(),
        SizedBox(
          height: context.dynamicHeight(0.017),
        ),
        const DashboardHeyText(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        const DashboardHireDiscordButton(),
        SizedBox(
          height: context.dynamicHeight(0.07),
        ),
        const DashboardSomePlacesText(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: context.dynamicHeight(0.5),
              width: context.dynamicWidth(0.15),
              child: Column(
                children: [
                  const CircleAvatar(
                    minRadius: 30,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage('assets/images/infumia_limited_logo.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: context.dynamicHeight(0.02),
                  ),
                  Text(
                    'Infumia Limited',
                    style: GoogleFonts.rubik(
                      color: Color.fromRGBO(255, 139, 19, 1),
                      fontWeight: FontWeight.w800,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Software Company',
                    style: GoogleFonts.rubik(
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    'I have been working as a co-founder and software developer of Infumia software and graphic design company since 2019.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.rubik(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: context.dynamicHeight(0.5),
        ),
      ],
    );
  }
}
