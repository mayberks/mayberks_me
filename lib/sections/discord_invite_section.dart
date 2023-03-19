import 'package:flutter/material.dart';
import 'package:mayberks_me/components/discord_button.dart';

class DiscordInvite extends StatelessWidget {
  const DiscordInvite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return discordButton(
        'Our community discord server',
        'Click to join!',
        'svg/discord.svg',
        'svg/discord.svg',
        context,
    );
  }
}
