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
