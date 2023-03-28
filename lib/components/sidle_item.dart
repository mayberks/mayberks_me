import 'package:flutter/material.dart';
import 'package:mayberks_me/components/medium_text.dart';
import 'package:mayberks_me/constants/colors.dart';

/// the sidle item.
Widget sidleItem(String image, String name) {
  return Expanded(
    child: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        LayoutBuilder(builder: (context, c) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              height: c.maxWidth * 0.9,
              width: c.maxWidth,
              fit: BoxFit.cover,
            ),
          );
        }),
        LayoutBuilder(builder: (context, c) {
          return Container(
            height: c.maxWidth * 0.9,
            width: c.maxWidth,
            color: backgroundColor.withOpacity(0.6),
          );
        }),
        LayoutBuilder(
          builder: (context, c) {
            return Container(
              width: c.maxWidth,
              height: c.maxWidth * 0.1,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  border: Border.all(color: greenColor, width: 1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  mediumText('title', context, color: whiteColor),
                  const Icon(
                    Icons.arrow_forward_rounded,
                    color: whiteColor,
                  )
                ],
              ),
            );
          },
        ),
      ],
    ),
  );
}
