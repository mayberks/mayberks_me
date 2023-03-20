import 'package:flutter/widgets.dart';
import 'package:mayberks_me/components/medium_text.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';

import '../utilities/responsive.dart';

Widget inviteItem(
  String image,
  String title,
  String description,
  BuildContext context,
) {
  return Stack(
    alignment: Alignment.center,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
      LayoutBuilder(
        builder: (context, c) {
          return Container(
            width: c.maxWidth,
            height: c.maxHeight,
            color: backgroundColor.withOpacity(0.6),
          );
        },
      ),
      Positioned(
        bottom: 10,
        left: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            mediumText(
              title,
              context,
              color: whiteColor,
              size: isMobile(context) ? 18 : 10,
            ),
            heightTen,
            smallText(
              description,
              context,
              color: whiteColor,
              size: isMobile(context) ? 16 : 8,
            ),
          ],
        ),
      ),
    ],
  );
}
