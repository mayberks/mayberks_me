import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
            flex: 55,
          ),
          Expanded(
            flex: 75,
            child: CircleAvatar(
              minRadius: 120,
              backgroundColor: Colors.white,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(95),
                child: Image.asset(MayberksProfileImage),
              ),
            ),
          ),
          const Spacer(
            flex: 10,
          ),
          Expanded(
            flex: 30,
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
                    isRepeatingAnimation: true,
                    totalRepeatCount: 999,
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
            flex: 30,
            child: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      print('Clicked: Github Button');
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  IconButton(
                    onPressed: () {
                      print('Clicked: Linkedin Button');
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  IconButton(
                    onPressed: () {
                      print('Clicked: Discord Button');
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.discord,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  IconButton(
                    onPressed: () {
                      print('Clicked: Whatsapp Button');
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.white,
                    ),
                  ),const SizedBox(
                    width: 7,
                  ),
                  IconButton(
                    onPressed: () {
                      print('Clicked: Website Button');
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.link,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(
            flex: 200,
          ),
        ],
      ),
    );
  }
}
