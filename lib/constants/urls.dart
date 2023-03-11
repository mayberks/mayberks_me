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

/// the send mail link parse.
String email = 'aybrkckr6@gmail.com';
String title = "Let's work together!";
String message =
    "Hey, I want to work with you. Can you please contact me at ____?";
final Uri _sendmailUrl =
    Uri.parse('mailto:$email?subject=$title&body=$message');

/// the company discord link parse.
final Uri _companydiscordUrl = Uri.parse('https://discord.gg/cGr4QVQBZE');

/// the hosting provider link parse.
final Uri _hostingproviderUrl = Uri.parse('https://discord.gg/c4JwDRA8qY');

/// the flutter projects link parse.
final Uri _flutterprojectsUrl = Uri.parse('flutterprojects.mayberks.me');

/// the discord setups link parse.
final Uri _discordsetupsUrl = Uri.parse('discordsetups.mayberks.me');

/// the minecraft configurations link parse.
final Uri _minecraftconfigsUrl = Uri.parse('minecraftconfigs.mayberks.me');

/// the minecraft optimization link parse.
final Uri _minecraftoptimizationsUrl =
    Uri.parse('minecraftoptimizations.mayberks.me');

/// the minecraft setups link parse.
final Uri _minecraftsetupsUrl = Uri.parse('minecraftsetups.mayberks.me');

/// the mobile applications link parse.
final Uri _mobileappsUrl = Uri.parse('mobileapps.mayberks.me');

/// the web developments link parse.
final Uri _webdevelopmentsUrl = Uri.parse('webdevelopments.mayberks.me');

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

/// the send mail link button.
Future<void> launchSendMail() async {
  if (!await launchUrl(_sendmailUrl)) {
    throw Exception('Could not launch $_sendmailUrl');
  }
}

/// the company discord link button.
Future<void> launchCompanyDiscord() async {
  if (!await launchUrl(_companydiscordUrl)) {
    throw Exception('Could not launch $_companydiscordUrl');
  }
}

/// the hosting provider discord link button.
Future<void> launchHostingProviderDiscord() async {
  if (!await launchUrl(_hostingproviderUrl)) {
    throw Exception('Could not launch $_hostingproviderUrl');
  }
}


/// the discord setups link button.
Future<void> launchDiscordSetups() async {
  if (!await launchUrl(_discordsetupsUrl)) {
    throw Exception('Could not launch $_discordsetupsUrl');
  }
}


/// the flutter projects link button.
Future<void> launchFlutterProjects() async {
  if (!await launchUrl(_flutterprojectsUrl)) {
    throw Exception('Could not launch $_flutterprojectsUrl');
  }
}


/// the minecraft configurations link button.
Future<void> launchminecraftconfigurationsUrl() async {
  if (!await launchUrl(_minecraftconfigsUrl)) {
    throw Exception('Could not launch $_minecraftconfigsUrl');
  }
}


/// the minecraft optimizations link button.
Future<void> launchminecraftoptimizationsUrl() async {
  if (!await launchUrl(_minecraftoptimizationsUrl)) {
    throw Exception('Could not launch $_minecraftoptimizationsUrl');
  }
}


/// the minecraft setups link button.
Future<void> launchminecraftsetupsUrl() async {
  if (!await launchUrl(_minecraftsetupsUrl)) {
    throw Exception('Could not launch $_minecraftsetupsUrl');
  }
}


/// the mobile applications link button.
Future<void> launchmobileappsUrl() async {
  if (!await launchUrl(_mobileappsUrl)) {
    throw Exception('Could not launch $_mobileappsUrl');
  }
}


/// the web developments link button.
Future<void> launchwebdevelopmentsUrl() async {
  if (!await launchUrl(_webdevelopmentsUrl)) {
    throw Exception('Could not launch $_webdevelopmentsUrl');
  }
}



