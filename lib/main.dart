import 'package:flutter/material.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

void main() {
  usePathUrlStrategy();
  runApp(MayberksMe());
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


