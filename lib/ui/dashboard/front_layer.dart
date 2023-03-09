import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
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
            flex: 5,
          ),
          Expanded(
            flex: 2,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 30,
                fontFamily: 'Karla',
                color: Colors.white,
              ),
              child: AnimatedTextKit(
                isRepeatingAnimation: true,
                animatedTexts: [
                  TypewriterAnimatedText('AYBERK CAKIR'),
                ],
              ),
            ),
          ),
          const Spacer(
            flex: 1,
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
