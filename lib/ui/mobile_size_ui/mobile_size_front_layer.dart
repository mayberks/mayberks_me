import 'package:flutter/material.dart';
import 'package:mayberks_me/components/mobile_components/mobile_size_dashboard_profile_circle.dart';
import 'package:mayberks_me/components/mobile_components/mobile_size_dashboard_profile_name_text.dart';
import 'package:mayberks_me/constants/extensions.dart';

class MobileSizeDashboardFrontLayer extends StatelessWidget {
  const MobileSizeDashboardFrontLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.dynamicHeight(0.07),
        ),
        const MobileSizeDashboardProfileCircle(),
        SizedBox(
          height: context.dynamicHeight(0.02),
        ),
        const MobileSizeDashboardProfileNameText(),
        SizedBox(
          height: context.dynamicHeight(0.035),
        ),
      ],
    );
  }
}
