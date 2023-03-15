import 'package:flutter/material.dart';
import 'package:mayberks_me/components/mobile_components/mobile_size_dashboard_all_skills.dart';
import 'package:mayberks_me/components/mobile_components/mobile_size_dashboard_all_works.dart';
import 'package:mayberks_me/components/mobile_components/mobile_size_dashboard_certificates_educations.dart';
import 'package:mayberks_me/components/mobile_components/works/mobile_size_ada_dogaltas.dart';
import 'package:mayberks_me/components/mobile_components/works/mobile_size_glory_hosting_solutions.dart';
import 'package:mayberks_me/components/mobile_components/works/mobile_size_infumia_limited.dart';
import 'package:mayberks_me/components/mobile_components/works/mobile_size_senior_team.dart';
import 'package:mayberks_me/components/mobile_components/works/mobile_size_valatic.dart';
import 'package:mayberks_me/constants/extensions.dart';

class MobileSizeDashboardWorksSection extends StatelessWidget {
  const MobileSizeDashboardWorksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.dynamicHeight(0.7),
      width: context.dynamicWidth(0.7),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 40, 40, 40),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: const MobileSizeDashboardAllWorks(),
    );
  }
}
