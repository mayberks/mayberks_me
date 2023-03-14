import 'package:flutter/material.dart';
import 'package:mayberks_me/constants/extensions.dart';
import 'package:mayberks_me/constants/images.dart';

class MobileSizeProfileCircle extends StatelessWidget {
  const MobileSizeProfileCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.dynamicHeight(0.15),
      child: CircleAvatar(
        minRadius: 45,
        backgroundColor: Colors.white,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(45),
          child: Image.asset(mayberksProfileImage),
        ),
      ),
    );
  }
}
