import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/utilities/profile_data.dart';
import 'package:mayberks_me/utilities/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

/// the minecraft configuration portfolios.
class MinecraftConfigurationPortfolios extends StatefulWidget {
  const MinecraftConfigurationPortfolios({super.key});

  @override
  State<MinecraftConfigurationPortfolios> createState() => _MinecraftConfigurationPortfoliosState();
}

class _MinecraftConfigurationPortfoliosState extends State<MinecraftConfigurationPortfolios> {
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
              List.generate(ProfileData.minecraftconfigurationportfoliolist.length, (index) {
            return MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () async {
                  Get.defaultDialog(
                    radius: 10,
                    backgroundColor: containerBackgroundColor,
                    actions: [
                      IconButton(
                        onPressed: () {
                          /// the link parse.
                          final Uri minecraftconfigurationportfolioUrl = Uri.parse(ProfileData
                              .minecraftconfigurationportfoliolist[index]['shop_link']);

                          /// the link launch.
                          Future<void> launchlink() async {
                            if (!await launchUrl(minecraftconfigurationportfolioUrl)) {
                              throw Exception(
                                  'Could not launch $minecraftconfigurationportfolioUrl');
                            }
                          }

                          /// the launch link.
                          launchlink();},
                        icon: const FaIcon(
                          FontAwesomeIcons.bagShopping,
                          color: greenColor,
                          size: 18,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.xmark,
                          color: redColor,
                          size: 22,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          /// the link parse.
                          final Uri minecraftconfigurationportfolioUrl = Uri.parse(ProfileData
                              .minecraftconfigurationportfoliolist[index]['github_link']);

                          /// the link launch.
                          Future<void> launchlink() async {
                            if (!await launchUrl(minecraftconfigurationportfolioUrl)) {
                              throw Exception(
                                  'Could not launch $minecraftconfigurationportfolioUrl');
                            }
                          }

                          /// the launch link.
                          launchlink();
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.github,
                          color: whiteColor,
                          size: 18,
                        ),
                      ),
                    ],
                    title: 'Project Preview',
                    titleStyle: const TextStyle(
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w400,
                      color: whiteColor,
                    ),
                    content: Image.asset(
                      ProfileData.minecraftconfigurationportfoliolist[index]['image'],
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
                      ProfileData.minecraftconfigurationportfoliolist[index]['image'],
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

//                  Get.defaultDialog(
//                     radius: 10,
//                     backgroundColor: containerBackgroundColor,
//                     actions: [
//                       IconButton(
//                         onPressed: () {
//                           Get.back();
//                         },
//                         icon: Icon(
//                           Icons.close,
//                           color: Colors.red,
//                         ),
//                       ),
//                     ],
//                     title: 'Project Preview',
//                     titleStyle: TextStyle(
//                       fontFamily: 'Sora',
//                       fontWeight: FontWeight.w400,
//                       color: whiteColor,
//                     ),
//                     content: Image.asset(
//                       ProfileData.flutterportfolios[index],
//                       height: isMobile(context) || isMobile2(context)
//                           ? null
//                           : Get.height * 0.8,
//                       fit: BoxFit.fill,
//                     ),
//                   );

//                      IconButton(
//                         onPressed: () {
//                           Get.back();
//                         },
//                         icon: Icon(
//                           Icons.close,
//                           color: Colors.red,
//                         ),
//                       )
