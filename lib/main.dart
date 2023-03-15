import 'package:flutter/material.dart';
import 'package:mayberks_me/new_design/new_screen.dart';
import 'package:mayberks_me/responsive/layout.dart';
import 'package:mayberks_me/ui/mobile_size_ui/mobile_size_dashboard_screen.dart';
import 'package:mayberks_me/ui/normal_size_ui/normal_size_dashboard_screen.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

void main() {
  usePathUrlStrategy();
  runApp(MayberksMe());
}

class MayberksMe extends StatelessWidget {
  const MayberksMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test',
      builder: (context, child) {
        return ResponsiveWrapper.builder(
          BouncingScrollWrapper.builder(context, child!),
          minWidth: 300,
          debugLog: true,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.autoScaleDown(450, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
          ],
          background: Container(color: Color.fromARGB(255, 20, 20, 20)),
        );
      },
      home: NewScreen(),
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Ubuntu',
      ),
    );
  }
}


//const MaterialApp(
//       color: Colors.transparent,
//       debugShowCheckedModeBanner: false,
//       home: ResponsiveLayout(
//           normalMonitorScreen: NormalSizeDashboardScreen(),
//           smallMonitorScreen: NormalSizeDashboardScreen(),
//           mobileScreen: MobileSizeDashboardScreen(),
//       ),
//     );