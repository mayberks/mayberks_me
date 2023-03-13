import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardNoEnlargeText extends StatelessWidget {
  const DashboardNoEnlargeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Hey, it doesn't end here! I just didn't want to enlarge the page.",
        style: GoogleFonts.karla(
          color: Colors.white,
          fontWeight: FontWeight.w200,
          fontSize: 14,
        ),
      ),
    );
  }
}
