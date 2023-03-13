import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardDetailsText extends StatelessWidget {
  const DashboardDetailsText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          const Spacer(
            flex: 12,
          ),
          Expanded(
            flex: 15,
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
            flex: 12,
          ),
        ],
      ),
    );
  }
}
