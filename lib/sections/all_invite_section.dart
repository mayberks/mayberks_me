import 'package:flutter/material.dart';
import 'package:mayberks_me/components/medium_text.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/utilities/responsive.dart';
import 'package:mayberks_me/utilities/urls.dart';

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
                'assets/images/discord1.png',
                'Join our Community Server.',
                'Click here to join our community server.',
                () {
                  launchDiscordCommunity();
                },
              ),
              isMobile(context)
                  ? heightTen
                  : isBigDesktop(context)
                      ? widthFifteen
                      : widthTen,
              inviteItem(
                'assets/images/discord3.png',
                'Preview my MC-Market contents',
                'Click here to preview my mc-market contents.',
                () {
                  launchmcmarketAccount();
                },
              ),
            ],
          )
        : Row(
            children: [
              Expanded(
                child: inviteItem(
                  'assets/images/discord1.png',
                  'Join our Community Server.',
                  'Click here to join our community server.',
                  () {
                    launchDiscordCommunity();
                  },
                ),
              ),
              isBigDesktop(context) ? widthThirty : widthFifteen,
              Expanded(
                child: inviteItem(
                  'assets/images/discord3.png',
                  'Preview my MC-Market contents',
                  'Click here to preview my mc-market contents.',
                  () {
                    launchmcmarketAccount();
                  },
                ),
              ),
            ],
          );
  }

  Widget inviteItem(
    String image,
    String title,
    String description,
    GestureTapCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            LayoutBuilder(builder: (context, c) {
              return Container(
                width: c.maxWidth,
                height: c.maxWidth,
                color: backgroundColor.withOpacity(0.5),
              );
            }),
            Positioned(
              bottom: 70,
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
        ),
      ),
    );
  }
}
