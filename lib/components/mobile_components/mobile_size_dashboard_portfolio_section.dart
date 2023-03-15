import 'package:flutter/material.dart';
import 'package:mayberks_me/components/mobile_components/portfolio/mobile_size_flutter_projects.dart';

class MobileSizeDashboardPortfolioSection extends StatelessWidget {
  const MobileSizeDashboardPortfolioSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MobileSizeFlutterProjects(),
      ],
    );
  }
}
