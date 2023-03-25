import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/components/wrapper.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/sections/about_me_section.dart';
import 'package:mayberks_me/sections/all_invite_section.dart';
import 'package:mayberks_me/sections/commission_status_section.dart';
import 'package:mayberks_me/sections/experiences_section.dart';
import 'package:mayberks_me/sections/footer_section.dart';
import 'package:mayberks_me/sections/header_section.dart';
import 'package:mayberks_me/sections/portfolio_main_section.dart';
import 'package:mayberks_me/sections/portfolio_text_section.dart';
import 'package:mayberks_me/utilities/helper.dart';
import 'package:mayberks_me/utilities/responsive.dart';

/// the home screen.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              Experiences(),
              isBigDesktop(context) ? heightTwenty : heightTen,
              Invites(),
              isBigDesktop(context) ? heightTwenty : heightTen,
              PortfolioText(),
              PortfolioMain(),
              CommissionStatus(),
              isBigDesktop(context) ? heightTwenty : heightTen,
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
