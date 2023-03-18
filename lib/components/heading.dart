import 'package:flutter/widgets.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/utilities/responsive.dart';

/// the heading text.
Widget heading(title, BuildContext context,
    {TextAlign align = TextAlign.start,
    FontWeight weight = FontWeight.w700,
    Color color = whiteColor,
    double size = 16}) {
  return Text(
    title,
    textAlign: align,
    style: TextStyle(
      fontSize: isDesktop(context)
          ? size * 1.5
          : isBigDesktop(context)
              ? size * 2
              : size,
      fontWeight: weight,
      color: color,
    ),
  );
}
