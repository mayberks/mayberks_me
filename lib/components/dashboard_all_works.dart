import 'package:flutter/material.dart';
import 'package:mayberks_me/components/works/ada_dogaltas.dart';
import 'package:mayberks_me/components/works/glory_hosting_solutions.dart';
import 'package:mayberks_me/components/works/infumia_limited.dart';
import 'package:mayberks_me/components/works/senior_team.dart';
import 'package:mayberks_me/components/works/valatic.dart';
import 'package:mayberks_me/constants/extensions.dart';

class DashboardAllWorks extends StatelessWidget {
  const DashboardAllWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const InfumiaLimited(),
            SizedBox(
              width: context.dynamicWidth(0.03),
            ),
            const GloryHostingSolutions(),
            SizedBox(
              width: context.dynamicWidth(0.03),
            ),
            const SeniorTeam(),
          ],
        ),
        SizedBox(
          height: context.dynamicHeight(0.03),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AdaDogaltas(),
            SizedBox(
              width: context.dynamicWidth(0.03),
            ),
            const Valatic(),
          ],
        )
      ],
    );
  }
}
