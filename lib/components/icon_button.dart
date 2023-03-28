import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';

/// the icon button.
Widget iconButton(
  String title,
  String image,
  BuildContext context,
) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 3),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(2),
      border: Border.all(
        color: whiteColor,
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          image,
          height: 20,
          color: whiteColor,
        ),
        widthTen,
        smallText(
          title,
          fontfamily: 'Sora',
          weight: FontWeight.w300,
          context,
        ),
      ],
    ),
  );
}
