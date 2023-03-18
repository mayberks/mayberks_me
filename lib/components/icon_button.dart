import 'package:flutter/material.dart';
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
      border: Border.all(
        color: whiteColor,
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: 15,
        ),
        widthTen,
        smallText(title, context),
      ],
    ),
  );
}
