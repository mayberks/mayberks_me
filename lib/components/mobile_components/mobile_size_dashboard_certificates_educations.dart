import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/components/mobile_components/certificates/mobile_size_c_sharp_certificates.dart';
import 'package:mayberks_me/components/mobile_components/certificates/mobile_size_web_certificates.dart';
import 'package:mayberks_me/components/mobile_components/educations/mobile_size_ataturk_university.dart';
import 'package:mayberks_me/components/mobile_components/educations/mobile_size_vijya_university.dart';
import 'package:mayberks_me/components/normal_size_components/certificates/normal_size_c_sharp_certificates.dart';
import 'package:mayberks_me/components/normal_size_components/certificates/normal_size_web_certificates.dart';
import 'package:mayberks_me/components/normal_size_components/educations/normal_size_ataturk_university.dart';
import 'package:mayberks_me/components/normal_size_components/educations/normal_size_vijya_university.dart';
import 'package:mayberks_me/constants/extensions.dart';

class MobileSizeDashboardCertificatesEducations extends StatelessWidget {
  const MobileSizeDashboardCertificatesEducations({Key? key}) : super(key: key);

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
              '     My Educations',
              style: GoogleFonts.karla(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          const Expanded(
            flex: 4,
            child: MobileSizeAtaturkUniversity(),
          ),
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: MobileSizeVijyaUniversity(),
          ),
          Center(
            child: SizedBox(
              width: context.dynamicWidth(0.55),
              child: const Divider(
                color: Color.fromARGB(255, 20, 20, 20),
                thickness: 0.4,
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 1,
            child: Text(
              '     My Certificates',
              style: GoogleFonts.karla(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          const Expanded(
            flex: 4,
            child: MobileSizeCSharpCertificates(),
          ),
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: MobileSizeWebCertificates(),
          ),
        ],
      ),
    );
  }
}
