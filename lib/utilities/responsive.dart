import 'package:flutter/material.dart';

/// the small mobile phone.
bool isMobile(BuildContext context) => MediaQuery.of(context).size.width > 650;

/// the normal mobile phone.
bool isMobile2(BuildContext context) =>
    MediaQuery.of(context).size.width < 800 &&
    MediaQuery.of(context).size.width >= 650;

/// the small tablet.
bool isTab(BuildContext context) =>
    MediaQuery.of(context).size.width < 1000 &&
    MediaQuery.of(context).size.width >= 800;

/// the normal tablet.
bool isTab2(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1000 &&
    MediaQuery.of(context).size.width < 1300;

/// the normal desktop.
bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1300 &&
    MediaQuery.of(context).size.width < 1700;

/// the big desktop.
bool isBigDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1700;
