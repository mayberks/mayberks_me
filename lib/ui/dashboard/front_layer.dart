import 'package:flutter/material.dart';
import 'package:mayberks_me/components/dashboard_hire_discord_button.dart';
import 'package:mayberks_me/components/dashboard_profile_circle.dart';
import 'package:mayberks_me/components/dashboard_profile_social_media.dart';
import 'package:mayberks_me/components/dashboard_some_places_text.dart';
import 'package:mayberks_me/components/dashobard_hey_text.dart';
import 'package:mayberks_me/components/works/ada_dogaltas.dart';
import 'package:mayberks_me/components/works/glory_hosting_solutions.dart';
import 'package:mayberks_me/components/works/infumia_limited.dart';
import 'package:mayberks_me/components/works/senior_team.dart';
import 'package:mayberks_me/components/works/valatic.dart';
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

        /// SizedBox(
        ///   width: context.dynamicWidth(0.03),
        /// ),
        Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const InfumiaLimited(),
                SizedBox(
                  width: context.dynamicWidth(0.03),
                ),
                const SeniorTeam(),
                SizedBox(
                  width: context.dynamicWidth(0.03),
                ),
                const GloryHostingSolutions(),
              ],
            ),
            SizedBox(
              height: context.dynamicHeight(0.03),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const AdaDogaltas(),
                SizedBox(
                  width: context.dynamicWidth(0.03),
                ),
                const Valatic(),
              ],
            )
          ],
        ),
        SizedBox(
          height: context.dynamicHeight(0.5),
        ),
      ],
    );
  }
}
