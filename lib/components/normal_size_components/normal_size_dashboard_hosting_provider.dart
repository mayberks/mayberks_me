import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/constants/extensions.dart';
import 'package:mayberks_me/constants/urls.dart';

class NormalSizeDashboardHostingProvider extends StatelessWidget {
  const NormalSizeDashboardHostingProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(
          flex: 9,
        ),
        Expanded(
          flex: 17,
          child: Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 40, 40, 40),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            width: context.dynamicWidth(0.5),
            height: context.dynamicHeight(0.10),
            child: Row(
              children: [
                const Spacer(
                  flex: 30,
                ),
                const Expanded(
                  flex: 30,
                  child: FaIcon(
                    FontAwesomeIcons.server,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Expanded(
                  flex: 300,
                  child: Text(
                    'Looking for performance and quality hosting provider?',
                    style: GoogleFonts.karla(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                      fontSize: 23,
                    ),
                  ),
                ),
                const Spacer(
                  flex: 10,
                ),
                Expanded(
                  flex: 70,
                  child: SizedBox(
                    height: context.dynamicHeight(0.04),
                    width: context.dynamicWidth(0.14),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.transparent,
                        ),
                        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
                        foregroundColor: Colors.white,
                        textStyle: GoogleFonts.karla(
                          fontWeight: FontWeight.w300,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {
                        launchHostingProviderDiscord();
                      },
                      child: const Text('Join!'),
                    ),
                  ),
                ),
                const Spacer(
                  flex: 30,
                ),
              ],
            ),
          ),
        ),
        const Spacer(
          flex: 10,
        ),
      ],
    );
  }
}
