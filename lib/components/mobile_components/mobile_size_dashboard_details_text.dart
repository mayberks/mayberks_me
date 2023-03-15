import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileSizeDashboardDetailsText extends StatelessWidget {
  const MobileSizeDashboardDetailsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          const Spacer(
            flex: 8,
          ),
          Expanded(
            flex: 44,
            child: Text(
              'Here are the details about me.',
              style: GoogleFonts.karla(
                color: Colors.blue,
                fontWeight: FontWeight.w800,
                fontSize: 24,
              ),
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
