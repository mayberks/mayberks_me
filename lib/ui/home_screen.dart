import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/components/heading.dart';
import 'package:mayberks_me/components/icon_button.dart';
import 'package:mayberks_me/components/medium_text.dart';
import 'package:mayberks_me/components/rounded_image.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/components/work_item.dart';
import 'package:mayberks_me/components/wrapper.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/utilities/helper.dart';
import 'package:mayberks_me/utilities/profile_data.dart';
import 'package:mayberks_me/utilities/responsive.dart';

/// the home screen.
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double margin = Helper.getMargin(context);
    double size = Get.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Wrapper(
          horizontal: margin,
          vertical: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              profile(),
              aboutMe(),
              experiences(),
            ],
          ),
        ),
      ),
    );
  }

  /// the profile section.
  Widget profile() {
    return Column(
      children: [
        roundedImage(context, image: ProfileData.profileImage),
        isDesktop(context) ? heightFifteen : heightTen,
        heading(ProfileData.profileName, context),
        isDesktop(context) ? heightTen : heightFour,
        smallText(ProfileData.job, context),
        isDesktop(context) ? heightTwenty : heightTen,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/flutter_logo.png',
              height: isDesktop(context) ? 25 : 15,
            ),
            isDesktop(context) ? widthFifteen : widthTen,
            Image.asset(
              'assets/images/flutter_logo.png',
              height: isDesktop(context) ? 25 : 15,
            ),
          ],
        )
      ],
    );
  }

  /// the aboutMe section.
  Widget aboutMe() {
    return Column(
      children: [
        SizedBox(
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              heading(
                'Het!',
                context,
                color: greenColor,
              ),
              heightTen,
              smallText(
                ProfileData.aboutMe,
                context,
                align: TextAlign.justify,
              ),
            ],
          ),
        ),
        heightTwenty,
        Row(
          children: [
            Expanded(
              child: iconButton(
                  'Hey, hire me!', 'assets/images/flutter_logo.png', context),
            ),
            widthFifteen,
            Expanded(
              child: iconButton(
                  'ayberkcakr#9861', 'assets/images/flutter_logo.png', context),
            ),
          ],
        ),
        heightTen,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            mediumText("Some places I've worked with", context),
          ],
        ),
        heightTen,
      ],
    );
  }

  /// the experiences section.
  Widget experiences() {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      decoration: BoxDecoration(
        color: containerBackgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          mediumText(
            'My Works',
            context,
            color: whiteColor,
          ),
          heightFifteen,
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: ProfileData.experiences.length,
            itemBuilder: (c, i) {
              return workItem(ProfileData.experiences[i], context);
            },
          ),
        ],
      ),
    );
  }
}
