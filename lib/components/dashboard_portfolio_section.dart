import 'package:flutter/material.dart';
import 'package:mayberks_me/components/portfolio/discord_setups.dart';
import 'package:mayberks_me/components/portfolio/flutter_projects.dart';
import 'package:mayberks_me/components/portfolio/minecraft_configurations.dart';
import 'package:mayberks_me/components/portfolio/minecraft_optimizations.dart';
import 'package:mayberks_me/components/portfolio/minecraft_setups.dart';
import 'package:mayberks_me/components/portfolio/mobile_applications.dart';
import 'package:mayberks_me/constants/extensions.dart';

class DashboardPortfolioSection extends StatelessWidget {
  const DashboardPortfolioSection({Key? key}) : super(key: key);

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
                          const FlutterProjects(),
                          SizedBox(
                            width: context.dynamicWidth(0.005),
                          ),
                          const MinecraftSetups(),
                          SizedBox(
                            width: context.dynamicWidth(0.005),
                          ),
                          const MinecraftConfigurations(),
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
                          const MinecraftOptimizations(),
                          SizedBox(
                            width: context.dynamicWidth(0.005),
                          ),
                          const DiscordSetups(),
                          SizedBox(
                            width: context.dynamicWidth(0.005),
                          ),
                          const MobileApplications(),
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
