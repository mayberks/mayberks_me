import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/constants/extensions.dart';
import 'package:mayberks_me/constants/subtitles.dart';
import 'package:morphing_text/morphing_text.dart';

class InfumiaLimited extends StatelessWidget {
  const InfumiaLimited({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: context.dynamicHeight(0.24),
        width: context.dynamicWidth(0.15),
        child: Column(
          children: [
            SizedBox(
              height: context.dynamicHeight(0.02),
            ),
            const CircleAvatar(
              minRadius: 30,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 30,
                backgroundImage:
                    AssetImage('assets/images/infumia_limited_logo.jpg'),
              ),
            ),
            SizedBox(
              height: context.dynamicHeight(0.02),
            ),
            Text(
              'Infumia Limited',
              style: GoogleFonts.rubik(
                color: const Color.fromRGBO(255, 139, 19, 1),
                fontWeight: FontWeight.w800,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            EvaporateMorphingText(
              texts: infumiasubtitle,
              loopForever: true,
              textStyle: GoogleFonts.rubik(
                color: Colors.white,
                fontWeight: FontWeight.w100,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'I have been working as a co-founder and software developer of Infumia software and graphic design company since 2019.',
              textAlign: TextAlign.center,
              style: GoogleFonts.rubik(
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
