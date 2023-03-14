import 'package:flutter/material.dart';
import 'package:mayberks_me/components/normal_size_components/works/normal_size_ada_dogaltas.dart';
import 'package:mayberks_me/components/normal_size_components/works/normal_size_glory_hosting_solutions.dart';
import 'package:mayberks_me/components/normal_size_components/works/normal_size_infumia_limited.dart';
import 'package:mayberks_me/components/normal_size_components/works/normal_size_senior_team.dart';
import 'package:mayberks_me/components/normal_size_components/works/normal_size_valatic.dart';
import 'package:mayberks_me/constants/extensions.dart';

class NormalSizeDashboardAllWorks extends StatelessWidget {
  const NormalSizeDashboardAllWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NormalSizeInfumiaLimited(),
            SizedBox(
              width: context.dynamicWidth(0.03),
            ),
            const NormalSizeGloryHostingSolutions(),
            SizedBox(
              width: context.dynamicWidth(0.03),
            ),
            const NormalSizeSeniorTeam(),
          ],
        ),
        SizedBox(
          height: context.dynamicHeight(0.03),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const NormalSizeAdaDogaltas(),
            SizedBox(
              width: context.dynamicWidth(0.03),
            ),
            const NormalSizeValatic(),
          ],
        )
      ],
    );
  }
}
