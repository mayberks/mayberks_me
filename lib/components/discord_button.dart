import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/components/medium_text.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/components/text_button.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/utilities/urls.dart';

/// the discord button.
Widget discordButton(
  String text,
  String title,
  String image,
  BuildContext context,
) {
  return Container(
    width: Get.width,
    padding: const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 20,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: containerBackgroundColor,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset(
          image,
          height: 20,
          color: whiteColor,
        ),
        smallText(
          text,
          context,
        ),
        widthFifteen,
        GestureDetector(
          onTap: () {
            launchDiscordCommunity();
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: textButton(
              title,
              context,
            ),
          ),
        ),
      ],
    ),
  );
}
