import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/constants/extensions.dart';

class DashboardPortfolioSection extends StatelessWidget {
  const DashboardPortfolioSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.7),
      child: Row(
        children: [
          const Spacer(
            flex: 9,
          ),
          Expanded(
            flex: 17,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              width: context.dynamicWidth(0.5),
              height: context.dynamicHeight(0.7),
              child: Column(
                children: [
                  const Spacer(
                    flex: 5,
                  ),
                  Expanded(
                    flex: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: context.dynamicWidth(0.005),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage(
                                    'assets/images/flutter_projects6.png',
                                  ),
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              width: context.dynamicWidth(0.15),
                              height: context.dynamicHeight(0.4),
                              child: Column(
                                children: [
                                  const Spacer(
                                    flex: 5,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: GestureDetector(
                                      onTap: () {
                                        print("Tıklandı: Flutter Projets");
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white.withOpacity(
                                                0.2),
                                            borderRadius: const BorderRadius
                                                .all(
                                              Radius.circular(15),
                                            )),
                                        child: Row(
                                          children: [
                                            const Spacer(
                                              flex: 1,
                                            ),
                                            Expanded(
                                              flex: 10,
                                              child: Text(
                                                'Click to view!',
                                                style: GoogleFonts.karla(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                            const Spacer(
                                              flex: 3,
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: const FaIcon(
                                                  FontAwesomeIcons.arrowRight,
                                                  color: Colors.white,
                                                  size: 14,
                                                ),
                                              ),
                                            ),
                                            const Spacer(
                                              flex: 1,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: context.dynamicWidth(0.005),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 40, 40, 40),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              width: context.dynamicWidth(0.15),
                              height: context.dynamicHeight(0.4),
                            ),
                            SizedBox(
                              width: context.dynamicWidth(0.005),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 40, 40, 40),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              width: context.dynamicWidth(0.15),
                              height: context.dynamicHeight(0.4),
                            ),
                            SizedBox(
                              width: context.dynamicWidth(0.005),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(
                    flex: 5,
                  ),
                ],
              ),
            ),
          ),
          const Spacer(
            flex: 10,
          ),
        ],
      ),
    );
  }
}
