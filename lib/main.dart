import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/components/portfolios/flutter_portfolios.dart';
import 'package:mayberks_me/ui/home/home_screen.dart';
import 'package:mayberks_me/ui/portfolios/flutter_portfolios_screen.dart';

void main() {
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
      },
    );
  }
}
