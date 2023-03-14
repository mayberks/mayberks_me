import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/constants/extensions.dart';

class NormalSizeAtaturkUniversity extends StatelessWidget {
  const NormalSizeAtaturkUniversity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(
          flex: 5,
        ),
        Expanded(
          flex: 20,
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
                      backgroundImage:
                          AssetImage('assets/images/ataturk_university.png'),
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
        const Spacer(
          flex: 5,
        ),
        Expanded(
          flex: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ataturk University',
                style: GoogleFonts.karla(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              Text(
                'Management & Information Systems',
                style: GoogleFonts.karla(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: context.dynamicHeight(0.005),
              ),
              Text(
                'I have been studying in the department of management and information systems as a remote since 2021.',
                style: GoogleFonts.karla(
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
      ],
    );
  }
}
