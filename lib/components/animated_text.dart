import 'package:flutter/widgets.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/utilities/profile_data.dart';
import 'package:mayberks_me/utilities/responsive.dart';
import 'package:morphing_text/morphing_text.dart';

/// the animated text.
Widget animatedText(
  title,
  BuildContext context, {
  String fontfamily = '',
  Color color = whiteColor,
  double size = 10,
  int? maxLines,
  TextOverflow? overflow,
  TextAlign align = TextAlign.start,
  FontWeight weight = FontWeight.w100,
}) {
  return EvaporateMorphingText(
    loopForever: true,
    texts: title,
    textStyle: TextStyle(
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
