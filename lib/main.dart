import 'package:flutter/material.dart';
import 'package:mayberks_me/constants/theme_settings.dart';
import 'package:mayberks_me/ui/home_screen/main_home.dart';

void main() {
  runApp(MayberksMe());
}

class MayberksMe extends StatelessWidget {
  const MayberksMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        inputDecorationTheme: mainDefaultInputDecoration,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainHome(),
    );
  }
}
