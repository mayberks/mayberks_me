import 'package:flutter/material.dart';
import 'package:mayberks_me/components/medium_text.dart';
import 'package:mayberks_me/constants/colors.dart';


/// the mobile application previous page.
class MobileApplicationsPreviousPage extends StatelessWidget {
  const MobileApplicationsPreviousPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/');
        },
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: containerBackgroundColor,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_circle_left,
                color: greenColor,
                size: 25,
              ),
            ),
          ],
          title: Column(
            children: [
              mediumText(
                "Left Click to previous page!",
                context,
                fontfamily: 'Sora',
                weight: FontWeight.w300,
                color: whiteColor,
                size: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
