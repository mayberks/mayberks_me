import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPortfolioText extends StatelessWidget {
  const DashboardPortfolioText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(
          flex: 54,
        ),
        Expanded(
          flex: 50,
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Come on, get to know my impressive projects!",
              style: GoogleFonts.karla(
                color: Colors.blue,
                fontWeight: FontWeight.w800,
                fontSize: 24,
              ),
            ),
          ),
        ),
        const Spacer(
          flex: 50,
        ),
      ],
    );
  }
}
