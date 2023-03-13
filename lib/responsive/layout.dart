import 'package:flutter/material.dart';
import 'package:mayberks_me/responsive/dimensions.dart';
import 'package:mayberks_me/ui/mobile_size_ui/mobile_size_dashboard_screen.dart';
import 'package:mayberks_me/ui/normal_size_ui/normal_size_dashboard_screen.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget smallMonitorScreen;
  final Widget normalMonitorScreen;
  final Widget mobileScreen;

  const ResponsiveLayout({
    super.key,
    required this.normalMonitorScreen,
    required this.smallMonitorScreen,
    required this.mobileScreen,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= normalMonitorSize) {
          return const NormalSizeDashboardScreen();
        } else {
          return const MobileSizeDashboardScreen();
        }
      },
    );
  }
}
