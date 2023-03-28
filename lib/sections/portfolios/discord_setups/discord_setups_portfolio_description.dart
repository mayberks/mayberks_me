import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/components/heading.dart';
import 'package:mayberks_me/components/icon_button.dart';
import 'package:mayberks_me/components/medium_text.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/utilities/profile_data.dart';
import 'package:mayberks_me/utilities/urls.dart';

/// the portfolio description section.
class DiscordSetupsPortfolioDescription extends StatelessWidget {
  const DiscordSetupsPortfolioDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heading(
                'Hey!',
                context,
                color: greenColor,
                fontfamily: 'Epilogue',
                weight: FontWeight.w700,
              ),
              heightTen,
              smallText(
                ProfileData.minecraftsetupsportfoliodescriptionText,
                context,
                align: TextAlign.justify,
                fontfamily: 'Epilogue',
                weight: FontWeight.w300,
              ),
            ],
          ),
        ),
        heightFifteen,
      ],
    );
  }
}
