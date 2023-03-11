import 'package:url_launcher/url_launcher.dart';

/// the github link parse.
final Uri _githubUrl = Uri.parse('https://github.com/mayberks');

/// the linkedin link parse.
final Uri _linkedinUrl = Uri.parse('https://www.linkedin.com/in/ayberkcakrs/');

/// the discord link parse.
final Uri _discordUrl =
    Uri.parse('https://discordapp.com/channels/@me/658619270720389120');

/// the whatsapp link parse.
final Uri _whatsappUrl = Uri.parse('https://wa.me/905522510266');

/// the company link parse.
final Uri _companyUrl = Uri.parse('https://infumia.net');

/// the github link button.
Future<void> launchGithub() async {
  if (!await launchUrl(_githubUrl)) {
    throw Exception('Could not launch $_githubUrl');
  }
}

/// the linkedin link button.
Future<void> launchLinkedin() async {
  if (!await launchUrl(_linkedinUrl)) {
    throw Exception('Could not launch $_linkedinUrl');
  }
}

/// the discord link button.
Future<void> launchDiscord() async {
  if (!await launchUrl(_discordUrl)) {
    throw Exception('Could not launch $_discordUrl');
  }
}

/// the whatsapp link button.
Future<void> launchWhatsapp() async {
  if (!await launchUrl(_whatsappUrl)) {
    throw Exception('Could not launch $_whatsappUrl');
  }
}

/// the company link button.
Future<void> launchCompany() async {
  if (!await launchUrl(_companyUrl)) {
    throw Exception('Could not launch $_companyUrl');
  }
}
