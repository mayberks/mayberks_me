import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/constants/extensions.dart';
import 'package:mayberks_me/constants/subtitles.dart';
import 'package:morphing_text/morphing_text.dart';

class MobileSizeValatic extends StatelessWidget {
  const MobileSizeValatic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.dynamicHeight(0.12),
      width: context.dynamicWidth(0.7),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 40, 40, 40),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Row(
        children: [
          const Spacer(
            flex: 3,
          ),
          Expanded(
            flex: 17,
            child: Column(
              children: const [
                Spacer(
                  flex: 4,
                ),
                Expanded(
                  flex: 7,
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
                Spacer(
                  flex: 10,
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 3,
          ),
          Expanded(
            flex: 100,
            child: Column(
              children: [
                const Spacer(
                  flex: 6,
                ),
                Expanded(
                  flex: 5,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          'Valatic Minecraft Server',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.rubik(
                            color: const Color.fromRGBO(255, 139, 19, 1),
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: context.dynamicHeight(0.005),
                        ),
                        EvaporateMorphingText(
                          texts: valaticsubtitle,
                          loopForever: true,
                          textStyle: GoogleFonts.rubik(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                Expanded(
                  flex: 10,
                  child: Text(
                    'In 2022, I spent 9 months of working experience as a server developer on the Valatic minecraft server.',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.rubik(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 6,
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 3,
          ),
        ],
      ),
    );
  }
}
