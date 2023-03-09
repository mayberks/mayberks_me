import 'package:flutter/material.dart';
import 'package:mayberks_me/components/dashboard_profile_circle.dart';
import 'package:mayberks_me/components/dashboard_profile_social_media.dart';
import 'package:mayberks_me/components/dashobard_hey_text.dart';

import '../../components/dashboard_profile_name_text.dart';

class DashboardFrontLayer extends StatelessWidget {
  const DashboardFrontLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: const [
          Spacer(
            flex: 55,
          ),
          Expanded(
            flex: 75,
            child: DashboardProfileCircle(),
          ),
          Spacer(
            flex: 10,
          ),
          Expanded(
            flex: 33,
            child: DashboardProfileNameText(),
          ),
          Spacer(
            flex: 3,
          ),
          Expanded(
            flex: 30,
            child: DashboardProfileSocialMedia(),
          ),
          Spacer(
            flex: 20,
          ),
          Expanded(
            flex: 120,
            child: DashboardHeyText(),
          ),
          Spacer(
            flex: 90,
          ),
        ],
      ),
    );
  }
}
