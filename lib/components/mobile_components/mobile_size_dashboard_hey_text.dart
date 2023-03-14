import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileSizeDashboardHeyText extends StatelessWidget {
  const MobileSizeDashboardHeyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          const Spacer(
            flex: 4,
          ),
          Expanded(
            flex: 15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hey!',
                  style: GoogleFonts.karla(
                    color: Colors.blue,
                    fontWeight: FontWeight.w800,
                    fontSize: 35,
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Text(
                  "I am Ayberk! I'm a 23 years old flutter developer. I'm also a madman working on Minecraft. I have been working on Minecraft since 2016, including setup, configuration, optimization, etc. Not only these; I can work with you on website, mobile application and many other issues. With my competence and ability to work fast, we will do great things with you!",
                  style: GoogleFonts.karla(
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 4,
          ),
        ],
      ),
    );
  }
}
