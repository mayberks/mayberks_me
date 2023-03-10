import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/constants/extensions.dart';
import 'package:mayberks_me/constants/subtitles.dart';
import 'package:morphing_text/morphing_text.dart';

class Valatic extends StatelessWidget {
  const Valatic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
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
                AssetImage('assets/images/valatic.jpg'),
              ),
            ),
            SizedBox(
              height: context.dynamicHeight(0.02),
            ),
            Text(
              'Valatic Network',
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
              texts: valaticsubtitle,
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
              'In 2022, I spent 9 months of working experience as a server developer on the Valatic minecraft server.',
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
