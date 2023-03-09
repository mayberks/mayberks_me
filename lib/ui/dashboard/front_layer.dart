import 'package:flutter/material.dart';
import 'package:mayberks_me/components/dashboard_profile_circle.dart';
import 'package:mayberks_me/components/dashboard_profile_social_media.dart';
import 'package:mayberks_me/components/dashobard_hey_text.dart';

import '../../components/dashboard_profile_name_text.dart';

class DashboardFrontLayer extends StatelessWidget {
  const DashboardFrontLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          children: const [
            Spacer(
              flex: 55,
            ),
          ],
        ),
        Row(
          children: const [
            Expanded(
              flex: 75,
              child: DashboardProfileCircle(),
            ),
          ],
        ),
        Row(
          children: const [
            Spacer(
              flex: 10,
            ),
          ],
        ),
        Row(
          children: const [
            Expanded(
              flex: 33,
              child: DashboardProfileNameText(),
            ),
          ],
        ),
        Row(
          children: const [
            Spacer(
              flex: 3,
            ),
          ],
        ),
        Row(
          children: const [
            Expanded(
              flex: 30,
              child: DashboardProfileSocialMedia(),
            ),
          ],
        ),
        Row(
          children: const [
            Spacer(
              flex: 20,
            ),
          ],
        ),
        Row(
          children: const [
            Expanded(
              flex: 120,
              child: DashboardHeyText(),
            ),
          ],
        ),
        Row(
          children: const [
            Spacer(
              flex: 5,
            ),
          ],
        ),
        Row(
          children: const [
            Spacer(
              flex: 25,
            ),
          ],
        ),
      ],
    );
  }
}
