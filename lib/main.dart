import 'package:flutter/material.dart';
import 'package:mayberks_me/responsive/layout.dart';
import 'package:mayberks_me/ui/mobile_size_ui/mobile_size_dashboard_screen.dart';
import 'package:mayberks_me/ui/normal_size_ui/normal_size_dashboard_screen.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

void main() {
  runApp(const MayberksMe());
}

class MayberksMe extends StatelessWidget {
  const MayberksMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: Colors.transparent,
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
          normalMonitorScreen: NormalSizeDashboardScreen(),
          smallMonitorScreen: NormalSizeDashboardScreen(),
          mobileScreen: MobileSizeDashboardScreen(),
      ),
    );
  }
}
