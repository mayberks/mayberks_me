import 'package:flutter/material.dart';
import 'package:mayberks_me/components/invite_item.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/utilities/responsive.dart';

class Invites extends StatelessWidget {
  const Invites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isMobile(context)
        ? Column(
            children: [
              inviteItem(
                'assets/images/ada_dogaltas.jpg',
                'Title',
                'Decription',
                context,
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
                context,
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
                  context,
                ),
              ),
              isBigDesktop(context) ? widthThirty : widthFifteen,
              Expanded(
                child: inviteItem(
                  'assets/images/ada_dogaltas.jpg',
                  'Title',
                  'Decription',
                  context,
                ),
              ),
            ],
          );
  }
}
