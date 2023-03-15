import 'package:flutter/material.dart';
import 'package:mayberks_me/constants/extensions.dart';
import 'package:mayberks_me/constants/images.dart';

class MobileSizeDashboardProfileCircle extends StatelessWidget {
  const MobileSizeDashboardProfileCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          height: context.dynamicHeight(0.1),
          child: CircleAvatar(
            minRadius: context.dynamicHeight(0.1),
            backgroundColor: Colors.white,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(mayberksProfileImage),
            ),
          ),
        ),
      ],
    );
  }
}
