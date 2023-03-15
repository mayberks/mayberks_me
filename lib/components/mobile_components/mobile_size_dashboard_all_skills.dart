import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/components/mobile_components/educations/mobile_size_ataturk_university.dart';
import 'package:mayberks_me/components/mobile_components/educations/mobile_size_vijya_university.dart';
import 'package:mayberks_me/components/mobile_components/skills/mobile_size_flutter_skills.dart';
import 'package:mayberks_me/components/mobile_components/skills/mobile_size_minecraft_configurator.dart';
import 'package:mayberks_me/components/mobile_components/skills/mobile_size_minecraft_setup_specialist.dart';
import 'package:mayberks_me/components/mobile_components/skills/mobile_size_minecraft_system_administrator.dart';

class MobileSizeDashboardAllSkills extends StatelessWidget {
  const MobileSizeDashboardAllSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 1,
            child: Text(
              '     My Skills',
              style: GoogleFonts.karla(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
          const Expanded(
            flex: 4,
            child: MobileSizeFlutterSkills(),
          ),
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: MobileSizeMinecraftConfigurator(),
          ),
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: MobileSizeMinecraftSetupSpecialist(),
          ),
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: MobileSizeMinecraftSystemAdministrator(),
          ),
        ],
      ),
    );
  }
}
