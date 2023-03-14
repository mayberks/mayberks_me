import 'package:flutter/material.dart';
import 'package:mayberks_me/constants/extensions.dart';
import 'package:mayberks_me/constants/images.dart';

class MobileSizeDashboardProfileCircle extends StatelessWidget {
  const MobileSizeDashboardProfileCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.09),
      child: CircleAvatar(
        minRadius: 20,
        backgroundColor: Colors.white,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(mayberksProfileImage),
        ),
      ),
    );
  }
}
