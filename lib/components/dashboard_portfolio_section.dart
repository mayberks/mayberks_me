import 'package:flutter/material.dart';
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
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
