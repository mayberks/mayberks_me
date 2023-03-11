import 'package:flutter/material.dart';
import 'package:mayberks_me/components/dashboard_all_works.dart';
import 'package:mayberks_me/components/dashboard_details_section.dart';
import 'package:mayberks_me/components/dashboard_details_text.dart';
import 'package:mayberks_me/components/dashboard_footer_divider.dart';
import 'package:mayberks_me/components/dashboard_footer_icons.dart';
import 'package:mayberks_me/components/dashboard_hire_discord_button.dart';
import 'package:mayberks_me/components/dashboard_hosting_provider.dart';
import 'package:mayberks_me/components/dashboard_join_our_discord.dart';
import 'package:mayberks_me/components/dashboard_no_enlarge_text.dart';
import 'package:mayberks_me/components/dashboard_portfolio_section.dart';
import 'package:mayberks_me/components/dashboard_portfolio_text.dart';
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
        const DashboardProfileCircle(),
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
        const DashboardDetailsSection(),
        SizedBox(
          height: context.dynamicHeight(0.017),
        ),
        const DashboardNoEnlargeText(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        const DashboardPortfolioText(),
        SizedBox(
          height: context.dynamicHeight(0.02),
        ),
        const DashboardPortfolioSection(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        const DashboardHostingProvider(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        const DashboardFooterDivider(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        const DashboardFooterIcons(),
        SizedBox(
          height: context.dynamicHeight(0.9),
        ),
      ],
    );
  }
}
