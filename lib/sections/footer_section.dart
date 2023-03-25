import 'package:flutter/material.dart';
import 'package:mayberks_me/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: whiteColor,
          thickness: 0.4,
        ),
      ],
    );
  }
}
