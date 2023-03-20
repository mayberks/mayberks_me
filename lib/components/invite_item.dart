import 'package:flutter/widgets.dart';
import 'package:mayberks_me/constants/colors.dart';

Widget inviteItem(
  String image,
  String title,
  String description,
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
          ],
        ),
      ),
    ],
  );
}
