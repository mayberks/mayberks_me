import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/constants/colors.dart';

/// the wrapper.
Widget Wrapper(
    {required Widget child,
    double horizontal = 20,
    double vertical = 20,
    Color color = backgroundColor}) {
  return Container(
    width: Get.width,
    margin: EdgeInsets.symmetric(
      horizontal: horizontal,
      vertical: vertical,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: color,
    ),
    child: Center(
      child: child,
    ),
  );
}
