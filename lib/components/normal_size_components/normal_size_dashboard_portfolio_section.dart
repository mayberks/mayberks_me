import 'package:flutter/material.dart';
import 'package:mayberks_me/components/normal_size_components/portfolio/normal_size_discord_setups.dart';
import 'package:mayberks_me/components/normal_size_components/portfolio/normal_size_flutter_projects.dart';
import 'package:mayberks_me/components/normal_size_components/portfolio/normal_size_minecraft_configurations.dart';
import 'package:mayberks_me/components/normal_size_components/portfolio/normal_size_minecraft_optimizations.dart';
import 'package:mayberks_me/components/normal_size_components/portfolio/normal_size_minecraft_setups.dart';
import 'package:mayberks_me/components/normal_size_components/portfolio/normal_size_mobile_applications.dart';
import 'package:mayberks_me/constants/extensions.dart';

class NormalSizeDashboardPortfolioSection extends StatelessWidget {
  const NormalSizeDashboardPortfolioSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.85),
      child: Row(
        children: [
          const Spacer(
            flex: 9,
          ),
          Expanded(
            flex: 17,
            child: Column(
              children: [
                const Spacer(
                  flex: 2,
                ),
                Expanded(
                  flex: 87,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: context.dynamicWidth(0.005),
                          ),
                          const NormalSizeFlutterProjects(),
                          SizedBox(
                            width: context.dynamicWidth(0.005),
                          ),
                          const NormalSizeMinecraftSetups(),
                          SizedBox(
                            width: context.dynamicWidth(0.005),
                          ),
                          const NormalSizeMinecraftConfigurations(),
                          SizedBox(
                            width: context.dynamicWidth(0.005),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 87,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: context.dynamicWidth(0.005),
                          ),
                          const NormalSizeMinecraftOptimizations(),
                          SizedBox(
                            width: context.dynamicWidth(0.005),
                          ),
                          const NormalSizeDiscordSetups(),
                          SizedBox(
                            width: context.dynamicWidth(0.005),
                          ),
                          const NormalSizeMobileApplications(),
                          SizedBox(
                            width: context.dynamicWidth(0.005),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 10,
          ),
        ],
      ),
    );
  }
}
