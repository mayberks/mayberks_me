import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/components/heading.dart';
import 'package:mayberks_me/components/wrapper.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/utilities/helper.dart';
import 'package:mayberks_me/utilities/profile_data.dart';
import 'package:mayberks_me/utilities/responsive.dart';
import 'package:cached_network_image/cached_network_image.dart';

/// the flutter portfolios.
class FlutterPortfolios extends StatefulWidget {
  const FlutterPortfolios({super.key});

  @override
  State<FlutterPortfolios> createState() => _FlutterPortfoliosState();
}

class _FlutterPortfoliosState extends State<FlutterPortfolios> {
  @override
  Widget build(BuildContext context) {
    double margin = Helper.getMargin(context);
    return Container(
      color: backgroundColor,
      child: Wrapper(
        horizontal: margin,
        vertical: 20,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: backgroundColor,
            actions: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: whiteColor,
                  ))
            ],
            title: Column(
              children: [heading('Hey, welcome', context, size: 12)],
            ),
          ),
          backgroundColor: backgroundColor,
          body: Container(
            margin: const EdgeInsets.only(top: 20),
            child: GridView.count(
                crossAxisCount: isMobile(context) || isMobile2(context) ? 2 : 3,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                // childAspectRatio: (itemWidth / itemHeight),
                shrinkWrap: true,
                children: List.generate(ProfileData.flutterportfolios.length,
                    (index) {
                  return GestureDetector(
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
                              : Get.height * 0.7,
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Hero(
                          tag: 'imageHero$index',
                          child: Image.asset(
                              ProfileData.flutterportfolios[index])),
                    ),
                  );
                })),
          ),
        ),
      ),
    );
  }
}
