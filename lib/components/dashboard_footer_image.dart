import 'package:flutter/material.dart';
import 'package:mayberks_me/constants/extensions.dart';

class DashboardFooterImage extends StatelessWidget {
  const DashboardFooterImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/white_infumia_logo.png',
      //width: context.dynamicWidth(0.12),
    );
  }
}
