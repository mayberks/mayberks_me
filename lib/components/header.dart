import 'package:flutter/material.dart';
import 'package:mayberks_me/constants/theme_settings.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/background_image.png"),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: mainDefaultPadding),
        width: 200,
        child: Stack(
          children: [
          ],
        ),
      ),
    );
  }
}


