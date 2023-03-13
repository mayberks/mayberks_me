import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/constants/extensions.dart';
import 'package:mayberks_me/constants/urls.dart';

class DashboardHireDiscordButton extends StatelessWidget {
  const DashboardHireDiscordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(
          flex: 14,
        ),
        Expanded(
          flex: 6,
          child: OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Colors.white,
              ),
              minimumSize:
                  Size(context.dynamicWidth(0.13), context.dynamicHeight(0.05)),
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
              textStyle: GoogleFonts.karla(
                fontWeight: FontWeight.w300,
                fontSize: 22,
              ),
            ),
            onPressed: () {
              launchSendMail();
            },
            icon: const FaIcon(
              FontAwesomeIcons.mugHot,
              color: Color.fromRGBO(255, 251, 245, 1),
              size: 20,
            ),
            label: const Text('Hey, hire me!'),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Expanded(
          flex: 6,
          child: OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: Colors.white,
              ),
              minimumSize:
                  Size(context.dynamicWidth(0.13), context.dynamicHeight(0.05)),
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              launchDiscord();
            },
            icon: const FaIcon(
              FontAwesomeIcons.discord,
              color: Color.fromRGBO(88, 101, 242, 1),
              size: 20,
            ),
            label: Text(
              'ayberkcakr#9861',
              style: GoogleFonts.karla(
                fontWeight: FontWeight.w300,
                fontSize: 22,
              ),
            ),
          ),
        ),
        const Spacer(
          flex: 14,
        ),
      ],
    );
  }
}
