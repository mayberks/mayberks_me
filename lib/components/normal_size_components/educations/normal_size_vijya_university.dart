import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/constants/extensions.dart';

class NormalSizeVijyaUniversity extends StatelessWidget {
  const NormalSizeVijyaUniversity({Key? key}) : super(key: key);

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
                          AssetImage('assets/images/vijya_university.jpg'),
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
                'Vijya University',
                style: GoogleFonts.karla(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              Text(
                'Software Engineering',
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
                'I have been studying software engineering at Akademia Ekonomiczno University in Poland since 2022.',
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
