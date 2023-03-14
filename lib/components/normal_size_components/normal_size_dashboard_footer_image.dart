import 'package:flutter/material.dart';
import 'package:mayberks_me/constants/extensions.dart';
import 'package:mayberks_me/constants/urls.dart';

class NormalSizeDashboardFooterImage extends StatelessWidget {
  const NormalSizeDashboardFooterImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          launchCompany();
        },
        child: Image.asset(
          'assets/images/infumia_favicon.png',
          width: context.dynamicWidth(0.03),
        ),
      ),
    );
  }
}
