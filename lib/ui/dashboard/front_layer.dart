import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/constants/images.dart';

class DashboardFrontLayer extends StatelessWidget {
  const DashboardFrontLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          const Spacer(
            flex: 3,
          ),
          Expanded(
            flex: 4,
            child: CircleAvatar(
              minRadius: 95,
              backgroundColor: Colors.white,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(95),
                child: Image.asset(MayberksProfileImage),
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text(
                  'AYBERK CAKIR',
                  style: GoogleFonts.rubik(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
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
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          Expanded(flex: 6, child: Container()),
          const Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}
