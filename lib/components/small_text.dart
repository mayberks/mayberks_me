import 'package:flutter/widgets.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/utilities/responsive.dart';

/// the small text.
Widget smallText(
  title,
  BuildContext context, {
  TextAlign align = TextAlign.start,
  FontWeight weight = FontWeight.w100,
  Color color = whiteColor,
  TextOverflow? overflow,
  int? maxLines,
  double size = 10,
  String fontfamily = '',
}) {
  return Text(
    title,
    textAlign: align,
    maxLines: maxLines,
    overflow: overflow,
    style: TextStyle(
      wordSpacing: 1,
      fontSize: isDesktop(context)
          ? size * 1.5
          : isBigDesktop(context)
              ? size * 2
              : size,
      fontWeight: weight,
      color: color,
      fontFamily: fontfamily,
    ),
  );
}
