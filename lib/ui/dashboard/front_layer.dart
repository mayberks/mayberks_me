import 'package:flutter/material.dart';
import 'package:mayberks_me/components/dashboard_profile_circle.dart';
import 'package:mayberks_me/components/dashboard_profile_social_media.dart';
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
        DashboardProfileNameText(),
        SizedBox(
          height: context.dynamicHeight(0.035),
        ),
        DashboardProfileSocialMedia(),
        SizedBox(
          height: context.dynamicHeight(0.017),
        ),
        DashboardHeyText(),
      ],
    );
  }
}
