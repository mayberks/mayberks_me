import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/constants/extensions.dart';

class NormalSizeWebCertificatesTurkey extends StatelessWidget {
  const NormalSizeWebCertificatesTurkey({Key? key}) : super(key: key);

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
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                      AssetImage('assets/images/meb_logo.png'),
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
                'Turkish Ministry of Education',
                style: GoogleFonts.karla(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              Text(
                'Web Development',
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
                'I received 6 months of web application development training and certification in Turkey.',
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
