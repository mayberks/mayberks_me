import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/components/heading.dart';
import 'package:mayberks_me/components/portfolios/flutter_portfolios.dart';
import 'package:mayberks_me/components/portfolios/minecraft_setup_portfolios.dart';
import 'package:mayberks_me/components/wrapper.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/sections/portfolios/flutter_portfolios/flutter_portfolio_description.dart';
import 'package:mayberks_me/sections/portfolios/flutter_portfolios/flutter_portfolio_header.dart';
import 'package:mayberks_me/sections/portfolios/flutter_portfolios/flutter_previous_page_section.dart';
import 'package:mayberks_me/sections/portfolios/minecraft_setups/minecraft_setups_portfolio_description.dart';
import 'package:mayberks_me/sections/portfolios/minecraft_setups/minecraft_setups_portfolio_header.dart';
import 'package:mayberks_me/sections/portfolios/minecraft_setups/minecraft_setups_previous_page_section.dart';
import 'package:mayberks_me/utilities/helper.dart';
import 'package:mayberks_me/utilities/responsive.dart';

/// the my flutter portfolios screen.
class MinecraftSetupPortfoliosScreen extends StatefulWidget {
  const MinecraftSetupPortfoliosScreen({super.key});

  @override
  State<MinecraftSetupPortfoliosScreen> createState() =>
      _MinecraftSetupPortfoliosScreenState();
}

class _MinecraftSetupPortfoliosScreenState
    extends State<MinecraftSetupPortfoliosScreen> {
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
              MinecraftSetupsPortfolioHeader(),
              MinecraftSetupsPortfolioDescription(),
              isBigDesktop(context) ? heightTwenty : heightTen,
              MinecraftSetupsPreviousPage(),
              isBigDesktop(context) ? heightTwenty : heightTen,
              MinecraftSetupPortfolios(),
            ],
          ),
        ),
      ),
    );
  }
}
