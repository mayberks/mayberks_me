import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/components/certificates/c_sharp_certificates.dart';
import 'package:mayberks_me/components/certificates/web_certificates.dart';
import 'package:mayberks_me/components/educations/ataturk_university.dart';
import 'package:mayberks_me/components/educations/vijya_university.dart';
import 'package:mayberks_me/components/skills/flutter_skills.dart';
import 'package:mayberks_me/components/skills/minecraft_configurator.dart';
import 'package:mayberks_me/components/skills/minecraft_setup_specialist.dart';
import 'package:mayberks_me/components/skills/minecraft_system_administrator.dart';

class DashboardAllSkills extends StatelessWidget {
  const DashboardAllSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'My Skills',
              style: GoogleFonts.karla(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: FlutterSkills(),
          ),
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: MinecraftSetupSpecialist(),
          ),
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: MinecraftConfigurator(),
          ),
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: MinecraftSystemAdministrator(),
          ),
        ],
      ),
    );
  }
}
