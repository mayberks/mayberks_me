import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/components/dashboard_all_works.dart';
import 'package:mayberks_me/components/dashboard_details_text.dart';
import 'package:mayberks_me/components/dashboard_hire_discord_button.dart';
import 'package:mayberks_me/components/dashboard_join_our_discord.dart';
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
        const DashboardJoinOurDiscord(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        const DashboardDetailsText(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        SizedBox(
          height: context.dynamicHeight(0.7),
          child: Row(
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
                  height: context.dynamicHeight(0.7),
                  child: Column(
                    children: [
                      const Spacer(
                        flex: 5,
                      ),
                      Expanded(
                        flex: 100,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Spacer(
                              flex: 12,
                            ),
                            Expanded(
                              flex: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      'My Educations',
                                      style: GoogleFonts.karla(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  const Spacer(
                                    flex: 1,
                                  ),
                                  const Expanded(
                                    flex: 1,
                                    child: Text('heyyyyyy'),
                                  ),
                                  const Spacer(
                                    flex: 18,
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(
                              flex: 10,
                            ),
                            const VerticalDivider(
                              color: Color.fromARGB(255, 20, 20, 20),
                              thickness: 0.4,
                            ),
                            const Spacer(
                              flex: 10,
                            ),
                            Expanded(
                              flex: 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      'My Certificate & Skills',
                                      style: GoogleFonts.karla(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  const Spacer(
                                    flex: 1,
                                  ),
                                  const Expanded(
                                    flex: 1,
                                    child: Text('heyyyyyy'),
                                  ),
                                  const Spacer(
                                    flex: 18,
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(
                              flex: 12,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(
                        flex: 5,
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
        ),
        SizedBox(
          height: context.dynamicHeight(0.2),
        ),
      ],
    );
  }
}
