import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileSizeDashboardSomePlacesText extends StatelessWidget {
  const MobileSizeDashboardSomePlacesText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(
          flex: 4,
        ),
        Expanded(
          flex: 50,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Some places I've worked with",
              style: GoogleFonts.karla(
                color: Colors.blue,
                fontWeight: FontWeight.w800,
                fontSize: 24,
              ),
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
