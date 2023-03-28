import 'package:flutter/material.dart';
import 'package:mayberks_me/components/medium_text.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/utilities/responsive.dart';
import 'package:mayberks_me/utilities/urls.dart';


/// the invite section.
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
                'assets/images/bbb.png',
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
                  'Click to join our community server.',
                  () {
                    launchDiscordCommunity();
                  },
                ),
              ),
              isBigDesktop(context) ? widthThirty : widthFifteen,
              Expanded(
                child: inviteItem(
                  'assets/images/bbb.png',
                  'Preview my MC-Market profile.',
                  'Click to preview my mc-market profile.',
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
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    color: const Color(0xFF000000),
                  ),
                ),
              ),
            ),
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
                    fontfamily: 'Epilogue',
                    weight: FontWeight.w600,
                    size: isMobile(context) ? 18 : 8,
                  ),
                  heightTen,
                  smallText(
                    description,
                    context,
                    color: whiteColor,
                    size: isMobile(context) ? 12 : 6,
                    fontfamily: 'Epilogue',
                    weight: FontWeight.w300,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
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
