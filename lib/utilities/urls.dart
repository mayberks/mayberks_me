import 'package:url_launcher/url_launcher.dart';

/// the github link parse.
final Uri _githubUrl = Uri.parse('https://github.com/mayberks');

/// the github link launch.
Future<void> launchGithub() async {
  if (!await launchUrl(_githubUrl)) {
    throw Exception('Could not launch $_githubUrl');
  }
}

/// the discord link parse.
final Uri _discordUrl = Uri.parse('https://discord.gg/cGr4QVQBZE');

/// the discord link launch.
Future<void> launchDiscord() async {
  if (!await launchUrl(_discordUrl)) {
    throw Exception('Could not launch $_discordUrl');
  }
}

/// the whatsapp link parse.
final Uri _whatsappUrl = Uri.parse('https://wa.me/905522510266');

/// the whatsapp link launch.
Future<void> launchWhatsapp() async {
  if (!await launchUrl(_whatsappUrl)) {
    throw Exception('Could not launch $_whatsappUrl');
  }
}

/// the company link parse.
final Uri _companyUrl = Uri.parse('https://infumia.net');

/// the company link launch.
Future<void> launchCompany() async {
  if (!await launchUrl(_companyUrl)) {
    throw Exception('Could not launch $_companyUrl');
  }
}

/// the hire me link parse.
String hiremeMail = "aybrkckr6@gmail.com";
String hiremeTitle = "Let's work together!";
String hiremeMessage = "Hey, I want to work with you. Can you please contact me at ____?";
final Uri _sendmailUrl = Uri.parse('mailto:$hiremeMail?subject=$hiremeTitle&body=$hiremeMessage');

/// the hire me launch.
Future<void> launchSendMail() async {
  if (!await launchUrl(_sendmailUrl)) {
    throw Exception('Could not launch $_sendmailUrl');
  }
}

/// the discord link parse.
final Uri _discordDirect = Uri.parse('https://discordapp.com/channels/@me/658619270720389120');

/// the discord link launch.
Future<void> launchDiscordDirect() async {
  if (!await launchUrl(_discordDirect)) {
    throw Exception('Could not launch $_discordDirect');
  }
}