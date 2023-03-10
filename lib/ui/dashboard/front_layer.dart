import 'package:flutter/material.dart';
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
          height: context.dynamicHeight(0.09),
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
                          children: const [
                            Spacer(
                              flex: 10,
                            ),
                            Expanded(
                              flex: 10,
                              child: Text('1'),
                            ),
                            Spacer(
                              flex: 10,
                            ),
                            VerticalDivider(
                              color: Color.fromARGB(255, 20, 20, 20),
                              thickness: 0.4,
                            ),
                            Spacer(
                              flex: 10,
                            ),
                            Expanded(
                              flex: 10,
                              child: Text('1'),
                            ),
                            Spacer(
                              flex: 10,
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
