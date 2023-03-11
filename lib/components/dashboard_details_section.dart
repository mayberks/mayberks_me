import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/components/dashboard_certificates_educations.dart';
import 'package:mayberks_me/constants/extensions.dart';

class DashboardDetailsSection extends StatelessWidget {
  const DashboardDetailsSection({Key? key}) : super(key: key);

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
                      children: [
                        const Spacer(
                          flex: 12,
                        ),
                        const DashboardCertificatesEducations(),
                        const Spacer(
                          flex: 10,
                        ),
                        const VerticalDivider(
                          color: Color.fromARGB(255, 20, 20, 20),
                          thickness: 0.4,
                        ),
                        const Spacer(
                          flex: 10,
                        ),
                        Expanded(
                          flex: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  'My Skills',
                                  style: GoogleFonts.karla(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              const Spacer(
                                flex: 1,
                              ),
                              const Expanded(
                                flex: 1,
                                child: Text('heyyyyyy'),
                              ),
                              const Spacer(
                                flex: 18,
                              ),
                            ],
                          ),
                        ),
                        const Spacer(
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
