import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/ui/home/home_screen.dart';
import 'package:mayberks_me/ui/portfolios/discord_setup_portfolios_screen.dart';
import 'package:mayberks_me/ui/portfolios/flutter_portfolios_screen.dart';
import 'package:mayberks_me/ui/portfolios/minecraft_configuration_portfolios_screen.dart';
import 'package:mayberks_me/ui/portfolios/minecraft_optimization_portfolios_screen.dart';
import 'package:mayberks_me/ui/portfolios/minecraft_setup_portfolios_screen.dart';
import 'package:mayberks_me/ui/portfolios/mobile_application_portfolios_screen.dart';

void main() async {
  runApp(const MayberksMe());
}

class MayberksMe extends StatelessWidget {
  const MayberksMe({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mayberks | My Portfolio',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/flutter-portfolios': (context) => FlutterPortfoliosScreen(),
        '/minecraft-setups': (context) => MinecraftSetupPortfoliosScreen(),
        '/minecraft-configurations': (context) => MinecraftConfigurationPortfoliosScreen(),
        '/minecraft-optimizations': (context) => MinecraftOptimizationPortfoliosScreen(),
        '/discord-setups': (context) => DiscordSetupPortfoliosScreen(),
        '/mobile-applications': (context) => MobileApplicationPortfoliosScreen(),
      },
    );
  }
}
