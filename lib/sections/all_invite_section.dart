import 'package:flutter/material.dart';
import 'package:mayberks_me/components/medium_text.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/utilities/responsive.dart';

class Invites extends StatefulWidget {
  const Invites({Key? key}) : super(key: key);

  @override
  State<Invites> createState() => _InvitesState();
}

class _InvitesState extends State<Invites> {
  @override
  Widget build(BuildContext context) {
    return isMobile(context)
        ? Column(
            children: [
              inviteItem(
                'assets/images/ada_dogaltas.jpg',
                'Title',
                'Decription',
              ),
              isMobile(context)
                  ? heightFifteen
                  : isBigDesktop(context)
                      ? widthThirty
                      : widthFifteen,
              inviteItem(
                'assets/images/ada_dogaltas.jpg',
                'Title',
                'Decription',
              ),
            ],
          )
        : Row(
            children: [
              Expanded(
                child: inviteItem(
                  'assets/images/ada_dogaltas.jpg',
                  'Title',
                  'Decription',
                ),
              ),
              isBigDesktop(context) ? widthThirty : widthFifteen,
              Expanded(
                child: inviteItem(
                  'assets/images/ada_dogaltas.jpg',
                  'Title',
                  'Decription',
                ),
              ),
            ],
          );
  }

  Widget inviteItem(String image, String title, String description) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        LayoutBuilder(builder: (context, c) {
          return Container(
            width: c.maxWidth,
            height: c.maxWidth,
            color: backgroundColor.withOpacity(0.6),
          );
        }),
        Positioned(
          bottom: 10,
          left: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mediumText(
                title,
                context,
                color: whiteColor,
                size: isMobile(context) ? 18 : 10,
              ),
              heightTen,
              smallText(
                description,
                context,
                color: whiteColor,
                size: isMobile(context) ? 16 : 8,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
