import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:mayberks_me/components/dashboard_profile_circle.dart';
import 'package:mayberks_me/components/dashboard_profile_social_media.dart';
import 'package:mayberks_me/components/dashobard_hey_text.dart';
import 'package:mayberks_me/constants/extensions.dart';

import '../../components/dashboard_profile_name_text.dart';

class DashboardFrontLayer extends StatelessWidget {
  const DashboardFrontLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.dynamicHeight(0.17),
        ),
        SizedBox(
          height: context.dynamicHeight(0.15),
          child: const DashboardProfileCircle(),
        ),
        SizedBox(
          height: context.dynamicHeight(0.02),
        ),
        DashboardProfileNameText(),
        SizedBox(
          height: context.dynamicHeight(0.035),
        ),
        DashboardProfileSocialMedia(),
        SizedBox(
          height: context.dynamicHeight(0.017),
        ),
        DashboardHeyText(),
        SizedBox(
          height: context.dynamicHeight(0.05),
        ),
        SizedBox(
          width: context.dynamicWidth(0.15),
          height: context.dynamicHeight(0.9),
          child: GFCard(
            boxFit: BoxFit.cover,
            borderRadius: BorderRadius.circular(35.0),
            image: Image.asset('assets/images/completed_commission.png'),
            title: GFListTile(
              avatar: GFAvatar(),
              titleText: 'Game Controllers',
              subTitleText: 'PlayStation 4',
            ),
            content: Text("Some quick example text to build on the card"),
            buttonBar: GFButtonBar(
              children: <Widget>[
                GFAvatar(
                  backgroundColor: GFColors.PRIMARY,
                  child: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
