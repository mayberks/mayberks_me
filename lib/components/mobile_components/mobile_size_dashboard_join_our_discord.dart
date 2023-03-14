import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/constants/extensions.dart';
import 'package:mayberks_me/constants/urls.dart';

class MobileSizeDashboardJoinOurDiscord extends StatelessWidget {
  const MobileSizeDashboardJoinOurDiscord({Key? key}) : super(key: key);

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
          ),
        ),
        const Spacer(
          flex: 10,
        ),
      ],
    );
  }
}
