import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/components/heading.dart';
import 'package:mayberks_me/components/medium_text.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/utilities/profile_data.dart';

/// the portfolio text section.
class PortfolioText extends StatelessWidget {
  const PortfolioText({Key? key}) : super(key: key);

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
                'My portfolio.',
                context,
                color: greenColor,
                fontfamily: 'Epilogue',
                weight: FontWeight.w700,
              ),
              heightTen,
              smallText(
                ProfileData.portfolioText,
                context,
                align: TextAlign.justify,
                fontfamily: 'Epilogue',
                weight: FontWeight.w300,
              ),
            ],
          ),
        ),
        heightTwenty,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            mediumText(
              "Here are some examples!",
              context,
              weight: FontWeight.w700,
              fontfamily: 'Epilogue',
            ),
          ],
        ),
        heightTen,
      ],
    );
  }
}
