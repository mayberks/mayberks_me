import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/constants/extensions.dart';

class DashboardFooterDivider extends StatelessWidget {
  const DashboardFooterDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Spacer(
          flex: 9,
        ),
        Expanded(
          flex: 10,
          child: Divider(
            thickness: 0.5,
            color: Color.fromARGB(255, 89, 89, 89),
          ),
        ),
        Spacer(
          flex: 10,
        ),
      ],
    );
  }
}
