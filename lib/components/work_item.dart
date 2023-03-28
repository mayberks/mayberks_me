import 'package:flutter/material.dart';
import 'package:mayberks_me/components/rounded_image.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';

Widget workItem(var experience, BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(bottom: 20),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        roundedImage(
          context,
          image: experience['image'],
          radius: 100,
          size: 50,
        ),
        widthTwenty,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              smallText(
                experience['title'],
                context,
                size: 11,
                fontfamily: 'Sora',
                weight: FontWeight.w700,
              ),
              heightTwo,
              smallText(
                experience['sub_title'],
                context,
                size: 9,
                fontfamily: 'Sora',
                weight: FontWeight.w400,
              ),
              heightTree,
              Row(
                children: [
                  Expanded(
                    child: smallText(
                      experience['description'],
                      context,
                      size: 9,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                      fontfamily: 'Sora',
                      weight: FontWeight.w100,
                      color: whiteColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}
