import 'package:flutter/material.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashboard_all_skills.dart';
import 'package:mayberks_me/components/normal_size_components/normal_size_dashboard_certificates_educations.dart';
import 'package:mayberks_me/constants/extensions.dart';

class NormalSizeDashboardDetailsSection extends StatelessWidget {
  const NormalSizeDashboardDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.7),
      child: Row(
        children: [
          const Spacer(
            flex: 9,
          ),
          Expanded(
            flex: 17,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 40, 40, 40),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              width: context.dynamicWidth(0.5),
              height: context.dynamicHeight(0.7),
              child: Column(
                children: [
                  const Spacer(
                    flex: 5,
                  ),
                  Expanded(
                    flex: 100,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Spacer(
                          flex: 12,
                        ),
                        NormalSizeDashboardCertificatesEducations(),
                        Spacer(
                          flex: 10,
                        ),
                        VerticalDivider(
                          color: Color.fromARGB(255, 20, 20, 20),
                          thickness: 0.4,
                        ),
                        Spacer(
                          flex: 10,
                        ),
                        NormalSizeDashboardAllSkills(),
                        Spacer(
                          flex: 12,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 5,
                  ),
                ],
              ),
            ),
          ),
          const Spacer(
            flex: 10,
          ),
        ],
      ),
    );
  }
}
