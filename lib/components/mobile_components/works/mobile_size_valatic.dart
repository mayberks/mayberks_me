import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/constants/extensions.dart';
import 'package:mayberks_me/constants/subtitles.dart';
import 'package:morphing_text/morphing_text.dart';

class MobileSizeValatic extends StatelessWidget {
  const MobileSizeValatic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(
            flex: 5,
          ),
          Expanded(
            flex: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Spacer(
                  flex: 5,
                ),
                Expanded(
                  flex: 10,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: CircleAvatar(
                      minRadius: 30,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                        AssetImage('assets/images/valatic.jpg'),
                      ),
                    ),
                  ),
                ),
                Spacer(
                  flex: 10,
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 5,
          ),
          Expanded(
            flex: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Valatic Network',
                  style: GoogleFonts.karla(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Developer',
                  style: GoogleFonts.karla(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.005),
                ),
                Text(
                  'In 2022, I spent 9 months of working experience as a server developer on the Valatic minecraft server.',
                  style: GoogleFonts.karla(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
