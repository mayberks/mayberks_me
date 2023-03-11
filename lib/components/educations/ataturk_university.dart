import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AtaturkUniversity extends StatelessWidget {
  const AtaturkUniversity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(
          flex: 10,
        ),
        Expanded(
          flex: 20,
          child: Container(
            color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      minRadius: 30,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.purple,
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        const Spacer(
          flex: 4,
        ),
        Expanded(
          flex: 100,
          child: Container(
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ataturk University',
                  style: GoogleFonts.karla(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
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
