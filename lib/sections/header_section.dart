import 'package:flutter/widgets.dart';
import 'package:mayberks_me/components/heading.dart';
import 'package:mayberks_me/components/rounded_image.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/utilities/profile_data.dart';
import 'package:mayberks_me/utilities/responsive.dart';

/// the header section.
class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}