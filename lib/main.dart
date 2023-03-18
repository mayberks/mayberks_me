import 'package:flutter/material.dart';
import 'package:mayberks_me/ui/home_screen.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';

void main() {
  runApp(const MayberksMe());
}

class MayberksMe extends StatelessWidget {
  const MayberksMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mayberks | My Portfolio',
      home: HomeScreen(),
    );
  }
}


