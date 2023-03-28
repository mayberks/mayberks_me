import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/components/heading.dart';
import 'package:mayberks_me/components/portfolios/flutter_portfolios.dart';
import 'package:mayberks_me/components/wrapper.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/sections/portfolios/portfolio_description.dart';
import 'package:mayberks_me/sections/portfolios/portfolio_header.dart';
import 'package:mayberks_me/utilities/helper.dart';
import 'package:mayberks_me/utilities/responsive.dart';

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
              PortfolioHeader(),
              PortfolioDescription(),
              isBigDesktop(context) ? heightTwenty : heightTen,
              AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: backgroundColor,
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: whiteColor,
                      ))
                ],
                title: Column(
                  children: [heading('Hey, welcome', context, size: 12)],
                ),
              ),
              isBigDesktop(context) ? heightTwenty : heightTen,
              FlutterPortfolios(),
            ],
          ),
        ),
      ),
    );
  }
}
