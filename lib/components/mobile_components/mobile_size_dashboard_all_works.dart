import 'package:flutter/material.dart';
import 'package:mayberks_me/components/mobile_components/works/mobile_size_infumia_limited.dart';
import 'package:mayberks_me/constants/extensions.dart';

class MobileSizeDashboardAllWorks extends StatelessWidget {
  const MobileSizeDashboardAllWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MobileSizeInfumiaLimited(),
        SizedBox(
          height: context.dynamicHeight(0.03),
        ),
      ],
    );
  }
}
