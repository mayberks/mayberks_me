import 'package:flutter/material.dart';
import 'package:mayberks_me/components/mobile_components/educations/mobile_size_ataturk_university.dart';
import 'package:mayberks_me/components/mobile_components/mobile_size_dashboard_certificates_educations.dart';
import 'package:mayberks_me/constants/extensions.dart';

class MobileSizeDashboardDetailsSection extends StatelessWidget {
  const MobileSizeDashboardDetailsSection({Key? key}) : super(key: key);

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
      child: Column(
        children: [
          const MobileSizeDashboardCertificatesEducations(),
          SizedBox(
            height: context.dynamicHeight(0.02),
          ),
        ],
      ),
    );
  }
}
