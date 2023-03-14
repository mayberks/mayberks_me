import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mayberks_me/components/normal_size_components/skills/normal_size_flutter_skills.dart';
import 'package:mayberks_me/components/normal_size_components/skills/normal_size_minecraft_configurator.dart';
import 'package:mayberks_me/components/normal_size_components/skills/normal_size_minecraft_setup_specialist.dart';
import 'package:mayberks_me/components/normal_size_components/skills/normal_size_minecraft_system_administrator.dart';

class NormalSizeDashboardAllSkills extends StatelessWidget {
  const NormalSizeDashboardAllSkills({Key? key}) : super(key: key);

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
            child: NormalSizeFlutterSkills(),
          ),
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: NormalSizeMinecraftSetupSpecialist(),
          ),
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: NormalSizeMinecraftConfigurator(),
          ),
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: NormalSizeMinecraftSystemAdministrator(),
          ),
        ],
      ),
    );
  }
}
