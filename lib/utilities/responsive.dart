import 'package:flutter/material.dart';

/// The small mobile phone.
bool isMobile(BuildContext context) => MediaQuery.of(context).size.width > 650;

/// The normal mobile phone.
bool isMobile2(BuildContext context) =>
    MediaQuery.of(context).size.width < 800 &&
    MediaQuery.of(context).size.width >= 650;

/// The small tablet.
bool isTab(BuildContext context) =>
    MediaQuery.of(context).size.width < 1000 &&
    MediaQuery.of(context).size.width >= 800;

/// The normal tablet.
bool isTab2(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1000 &&
    MediaQuery.of(context).size.width < 1300;

/// The normal desktop.
bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1300 &&
    MediaQuery.of(context).size.width < 1700;

/// The big desktop.
bool isBigDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 1700;
