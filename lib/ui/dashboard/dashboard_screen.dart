import 'package:flutter/material.dart';
import 'package:mayberks_me/ui/dashboard/background.dart';
import 'package:mayberks_me/ui/dashboard/front_layer.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          BackgroundLayer(),
          DashboardFrontLayer(),
        ],
      ),
    );
  }
}
