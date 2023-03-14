import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/constants/subtitles.dart';
import 'package:morphing_text/morphing_text.dart';

class NormalSizeDashboardProfileNameText extends StatelessWidget {
  const NormalSizeDashboardProfileNameText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          'AYBERK CAKIR',
          style: GoogleFonts.rubik(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        EvaporateMorphingText(
          texts: mainsubtitle,
          loopForever: true,
          textStyle: GoogleFonts.rubik(
            color: Colors.white,
            fontWeight: FontWeight.w100,
          ),
        ),
      ],
    );
  }
}
