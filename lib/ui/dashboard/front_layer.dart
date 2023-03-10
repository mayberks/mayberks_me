import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/components/dashboard_all_works.dart';
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
        const DashboardAllWorks(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        Row(
          children: [
            const Spacer(
              flex: 9,
            ),
            Expanded(
              flex: 17,
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 40, 40, 40),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                width: context.dynamicWidth(0.5),
                height: context.dynamicHeight(0.10),
                child: Row(
                  children: [
                    const Spacer(
                      flex: 30,
                    ),
                    const Expanded(
                      flex: 30,
                      child: FaIcon(
                        FontAwesomeIcons.discord,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Expanded(
                      flex: 300,
                      child: Text(
                        'Ready to join our Service & Company community server?',
                        style: GoogleFonts.karla(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 23,
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 10,
                    ),
                    Expanded(
                      flex: 70,
                      child: SizedBox(
                        height: context.dynamicHeight(0.04),
                        width: context.dynamicWidth(0.14),
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                              color: Colors.white,
                            ),
                            backgroundColor: const Color.fromARGB(255, 20, 20, 20),
                            foregroundColor: Colors.white,
                            textStyle: GoogleFonts.karla(
                              fontWeight: FontWeight.w300,
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text('Join!'),
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 30,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(
              flex: 10,
            ),
          ],
        ),
        SizedBox(
          height: context.dynamicHeight(0.1),
        ),
      ],
    );
  }
}
