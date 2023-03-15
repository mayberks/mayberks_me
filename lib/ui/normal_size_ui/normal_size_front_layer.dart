import 'package:flutter/material.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashboard_all_works.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashboard_details_section.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashboard_details_text.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashboard_footer_divider.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashboard_footer_icons.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashboard_footer_image.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashboard_footer_text.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashboard_hire_discord_button.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashboard_hosting_provider.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashboard_join_our_discord.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashboard_no_enlarge_text.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashboard_portfolio_section.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashboard_portfolio_text.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashboard_profile_circle.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashboard_profile_social_media.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashboard_some_places_text.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashobard_hey_text.dart';
import 'package:mayberks_me/constants/extensions.dart';

import '../../components/normal_size_components/normal_size_dashboard_profile_name_text.dart';

class NormalSizeDashboardFrontLayer extends StatelessWidget {
  const NormalSizeDashboardFrontLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.dynamicHeight(0.17),
        ),
        const NormalSizeDashboardProfileCircle(),
        SizedBox(
          height: context.dynamicHeight(0.02),
        ),
        const NormalSizeDashboardProfileNameText(),
        SizedBox(
          height: context.dynamicHeight(0.035),
        ),
        const NormalSizeDashboardProfileSocialMedia(),
        SizedBox(
          height: context.dynamicHeight(0.017),
        ),
        const NormalSizeDashboardHeyText(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        const NormalSizeDashboardHireDiscordButton(),
        SizedBox(
          height: context.dynamicHeight(0.07),
        ),
        const NormalSizeDashboardSomePlacesText(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        const NormalSizeDashboardAllWorks(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        const NormalSizeDashboardJoinOurDiscord(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        const NormalSizeDashboardDetailsText(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        const NormalSizeDashboardDetailsSection(),
        SizedBox(
          height: context.dynamicHeight(0.017),
        ),
        const NormalSizeDashboardNoEnlargeText(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        const NormalSizeDashboardPortfolioText(),
        SizedBox(
          height: context.dynamicHeight(0.02),
        ),
        const NormalSizeDashboardPortfolioSection(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        const NormalSizeDashboardHostingProvider(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        const NormalSizeDashboardFooterDivider(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        const NormalSizeDashboardFooterIcons(),
        SizedBox(
          height: context.dynamicHeight(0.02),
        ),
        const NormalSizeDashboardFooterImage(),
        SizedBox(
          height: context.dynamicHeight(0.02),
        ),
        const NormalSizeDashboardFooterText(),
        SizedBox(
          height: context.dynamicHeight(0.001),
        ),
      ],
    );
  }
}
