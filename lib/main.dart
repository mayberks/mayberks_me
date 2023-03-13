import 'package:flutter/material.dart';
import 'package:mayberks_me/responsive/layout.dart';
import 'package:mayberks_me/ui/dashboard/dashboard_screen.dart';

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
        normalMonitorScreen: DashboardScreen(),
        smallMonitorScreen: DashboardScreen(),
        mobileScreen: DashboardScreen(),
      ),
    );
  }
}
