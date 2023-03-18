import 'package:flutter/material.dart';
import 'package:mayberks_me/utilities/responsive.dart';


/// the rounded image.
Widget roundedImage(BuildContext context,
    {required String image, double radius = 20, double size = 100}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(radius),
    child: Image.asset(
      image,
      height: isBigDesktop(context) ? size * 1.6 : size,
      width: isBigDesktop(context) ? size * 1.6 : size,
      fit: BoxFit.cover,
    ),
  );
}
