import 'package:flutter/material.dart';
import 'package:mayberks_me/components/mobile_components/portfolio/mobile_size_flutter_projects.dart';
import 'package:mayberks_me/components/mobile_components/portfolio/mobile_size_minecraft_configurations.dart';
import 'package:mayberks_me/constants/extensions.dart';

class MobileSizeDashboardPortfolioSection extends StatelessWidget {
  const MobileSizeDashboardPortfolioSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MobileSizeFlutterProjects(),
        SizedBox(
          height: context.dynamicHeight(0.017),
        ),
        const MobileSizeMinecraftConfigurations(),
      ],
    );
  }
}
