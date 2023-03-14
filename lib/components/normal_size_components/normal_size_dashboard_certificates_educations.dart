import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/components/normal_size_components/certificates/normal_size_c_sharp_certificates.dart';
import 'package:mayberks_me/components/normal_size_components/certificates/normal_size_web_certificates.dart';
import 'package:mayberks_me/components/normal_size_components/educations/normal_size_ataturk_university.dart';
import 'package:mayberks_me/components/normal_size_components/educations/normal_size_vijya_university.dart';


class NormalSizeDashboardCertificatesEducations extends StatelessWidget {
  const NormalSizeDashboardCertificatesEducations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'My Educations',
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
            flex: 4,
            child: NormalSizeAtaturkUniversity(),
          ),
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: NormalSizeVijyaUniversity(),
          ),
          const Divider(
            color: Color.fromARGB(255, 20, 20, 20),
            thickness: 0.4,
          ),
          const Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 1,
            child: Text(
              'My Certificates',
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
            flex: 4,
            child: NormalSizeWebCertificatesTurkey(),
          ),
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: NormalSizeCSharpCertificatesTurkey(),
          ),
        ],
      ),
    );
  }
}
