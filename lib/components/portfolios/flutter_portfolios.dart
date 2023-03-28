import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/utilities/profile_data.dart';
import 'package:mayberks_me/utilities/responsive.dart';

/// the flutter portfolios.
class FlutterPortfolios extends StatefulWidget {
  const FlutterPortfolios({super.key});

  @override
  State<FlutterPortfolios> createState() => _FlutterPortfoliosState();
}

class _FlutterPortfoliosState extends State<FlutterPortfolios> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: GridView.count(
          crossAxisCount: isMobile(context) || isMobile2(context) ? 2 : 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          // childAspectRatio: (itemWidth / itemHeight),
          shrinkWrap: true,
          children:
              List.generate(ProfileData.flutterportfolios.length, (index) {
            return MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () async {
                  Get.defaultDialog(
                    actions: [
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.close,
                            color: Colors.red,
                          ))
                    ],
                    title: 'Preview',
                    content: Image.asset(
                      ProfileData.flutterportfolios[index],
                      height: isMobile(context) || isMobile2(context)
                          ? null
                          : Get.height * 0.8,
                      fit: BoxFit.fill,
                    ),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Hero(
                    tag: 'imageHero$index',
                    child: Image.asset(
                      ProfileData.flutterportfolios[index],
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            );
          })),
    );
  }
}
