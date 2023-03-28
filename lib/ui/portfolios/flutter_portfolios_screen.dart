import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/components/portfolios/flutter_portfolios.dart';
import 'package:mayberks_me/components/wrapper.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/sections/home/about_me_section.dart';
import 'package:mayberks_me/sections/home/header_section.dart';
import 'package:mayberks_me/utilities/helper.dart';

/// the my flutter portfolios screen.
class FlutterPortfoliosScreen extends StatefulWidget {
  const FlutterPortfoliosScreen({super.key});

  @override
  State<FlutterPortfoliosScreen> createState() =>
      _FlutterPortfoliosScreenState();
}

class _FlutterPortfoliosScreenState extends State<FlutterPortfoliosScreen> {
  @override
  Widget build(BuildContext context) {
    double margin = Helper.getMargin(context);
    double size = Get.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Wrapper(
          horizontal: margin,
          vertical: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Header(),
              AboutMe(),
              FlutterPortfolios(),
            ],
          ),
        ),
      ),
    );
  }
}
