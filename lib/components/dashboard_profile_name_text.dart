import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class DashboardProfileNameText extends StatelessWidget {
  const DashboardProfileNameText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.max,
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
          height: 7,
        ),
        DefaultTextStyle(
          style: GoogleFonts.rubik(
            color: Colors.white,
            fontWeight: FontWeight.w100,
          ),
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              FadeAnimatedText('Flutter Developer'),
              FadeAnimatedText('System Administrator'),
              FadeAnimatedText('Minecraft Expert'),
              FadeAnimatedText('Minecraft Optimization Expert'),
              FadeAnimatedText('Minecraft Configurator'),
              FadeAnimatedText('Minecraft Setup Specialist'),
            ],
          ),
        ),
      ],
    );
  }
}
