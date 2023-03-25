import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/ui/home/home_screen.dart';

void main() {
  runApp(const MayberksMe());
}

class MayberksMe extends StatelessWidget {
  const MayberksMe({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mayberks | My Portfolio',
      home: HomeScreen(),
    );
  }
}
