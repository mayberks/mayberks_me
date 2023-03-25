import 'package:flutter/material.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/sections/home/portfolios/configurations_optimizations_item.dart';
import 'package:mayberks_me/sections/home/portfolios/discord_mobile_item.dart';
import 'package:mayberks_me/sections/home/portfolios/flutter_setups_item.dart';
import 'package:mayberks_me/utilities/responsive.dart';

/// the portfolio main section.
class PortfolioMain extends StatelessWidget {
  const PortfolioMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isBigDesktop(context) ? heightTwenty : heightTen,
        FlutterSetupsItem(),
        isBigDesktop(context) ? heightTwenty : heightTen,
        ConfigurationsOptimizationsItem(),
        isBigDesktop(context) ? heightTwenty : heightTen,
        DiscordMobileItem(),
        isBigDesktop(context) ? heightTwenty : heightTen,
      ],
    );
  }
}
