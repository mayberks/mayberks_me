import 'package:flutter/material.dart';
import 'package:mayberks_me/components/mobile_components/portfolio/mobile_size_discord_setups.dart';
import 'package:mayberks_me/components/mobile_components/portfolio/mobile_size_flutter_projects.dart';
import 'package:mayberks_me/components/mobile_components/portfolio/mobile_size_minecraft_configurations.dart';
import 'package:mayberks_me/components/mobile_components/portfolio/mobile_size_minecraft_optimizations.dart';
import 'package:mayberks_me/components/mobile_components/portfolio/mobile_size_minecraft_setups.dart';
import 'package:mayberks_me/components/mobile_components/portfolio/mobile_size_mobile_applications.dart';
import 'package:mayberks_me/components/mobile_components/portfolio/mobile_size_web_projects.dart';
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
        SizedBox(
          height: context.dynamicHeight(0.017),
        ),
        const MobileSizeMinecraftSetups(),
        SizedBox(
          height: context.dynamicHeight(0.017),
        ),
        const MobileSizeMinecraftOptimizations(),
        SizedBox(
          height: context.dynamicHeight(0.017),
        ),
        const MobileSizeDiscordSetups(),
        SizedBox(
          height: context.dynamicHeight(0.017),
        ),
        const MobileSizeMobileApplications(),
        SizedBox(
          height: context.dynamicHeight(0.017),
        ),
        const MobileSizeWebProjects(),
      ],
    );
  }
}
