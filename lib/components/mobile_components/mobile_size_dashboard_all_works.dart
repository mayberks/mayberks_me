import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/components/mobile_components/certificates/mobile_size_c_sharp_certificates.dart';
import 'package:mayberks_me/components/mobile_components/certificates/mobile_size_web_certificates.dart';
import 'package:mayberks_me/components/mobile_components/educations/mobile_size_ataturk_university.dart';
import 'package:mayberks_me/components/mobile_components/educations/mobile_size_vijya_university.dart';
import 'package:mayberks_me/components/mobile_components/works/mobile_size_glory_hosting_solutions.dart';
import 'package:mayberks_me/components/mobile_components/works/mobile_size_infumia_limited.dart';
import 'package:mayberks_me/constants/extensions.dart';

class MobileSizeDashboardAllWorks extends StatelessWidget {
  const MobileSizeDashboardAllWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 1,
            child: Text(
              '     My Works',
              style: GoogleFonts.karla(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          const Expanded(
            flex: 4,
            child: MobileSizeInfumiaLimited(),
          ),
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: MobileSizeGloryHostingSolutions(),
          ),
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: Text(''),
          ),
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: Text(''),
          ),
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: Text(''),
          ),
        ],
      ),
    );
  }
}
