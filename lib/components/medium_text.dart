import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/utilities/responsive.dart';

Widget mediumText(title, BuildContext context,
    {TextAlign align = TextAlign.start,
    FontWeight weight = FontWeight.w500,
    Color color = greenColor,
    double size = 12}) {
  return Text(
    title,
    textAlign: align,
    style: TextStyle(
      wordSpacing: 1,
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
