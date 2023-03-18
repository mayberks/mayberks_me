import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/components/medium_text.dart';
import 'package:mayberks_me/components/work_item.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/utilities/profile_data.dart';

class Experiences extends StatelessWidget {
  const Experiences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
