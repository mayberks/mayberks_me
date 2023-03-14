import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NormalSizeDashboardFooterText extends StatelessWidget {
  const NormalSizeDashboardFooterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Copyright © 2023 mayberks.me - All rights reserved!',
          style: GoogleFonts.karla(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        Text(
          'Design and Coding by Mayberks',
          style: GoogleFonts.karla(
            color: Colors.white,
            fontWeight: FontWeight.w200,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
