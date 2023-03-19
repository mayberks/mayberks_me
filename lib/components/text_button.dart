import 'package:flutter/material.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';

/// the text button.
Widget textButton(
  String title,
  BuildContext context,
) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(2),
      border: Border.all(
        color: whiteColor,
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        widthTen,
        smallText(title, context),
        widthTen,
      ],
    ),
  );
}
