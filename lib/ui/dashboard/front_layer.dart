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
          Expanded(
            flex: 3,
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RawMaterialButton(
                    onPressed: () {},
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Icon(
                      Icons.pause,
                      size: 35.0,
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  )
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
