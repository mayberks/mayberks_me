import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mayberks_me/constants/urls.dart';

class MobileSizeDashboardProfileSocialMedia extends StatelessWidget {
  const MobileSizeDashboardProfileSocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            launchGithub();
          },
          icon: const FaIcon(
            FontAwesomeIcons.github,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        IconButton(
          onPressed: () {
            launchLinkedin();
          },
          icon: const FaIcon(
            FontAwesomeIcons.linkedin,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        IconButton(
          onPressed: () {
            launchDiscord();
          },
          icon: const FaIcon(
            FontAwesomeIcons.discord,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        IconButton(
          onPressed: () {
            launchWhatsapp();
          },
          icon: const FaIcon(
            FontAwesomeIcons.whatsapp,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        IconButton(
          onPressed: () {
            launchCompany();
          },
          icon: const FaIcon(
            FontAwesomeIcons.link,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
