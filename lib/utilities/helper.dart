import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/utilities/responsive.dart';

class Helper {
  static double getMargin(BuildContext context) {
    double margin = Get.width * 0.13;
    if (isMobile(context)) {
      margin = Get.width * 0.13;
    } else if (isMobile2(context)) {
      margin = Get.width * 0.2;
    } else if (isTab(context)) {
      margin = Get.width * 0.25;
    } else if (isTab2(context)) {
      margin = Get.width * 0.27;
    } else if (isDesktop(context)) {
      margin = Get.width * 0.30;
    } else if (isBigDesktop(context)) {
      margin = Get.width * 0.35;
    }
    return margin;
  }
}
