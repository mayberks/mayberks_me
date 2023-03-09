import 'package:flutter/material.dart';
import 'package:mayberks_me/ui/dashboard/dashboard_screen.dart';

void main() {
  runApp(MayberksMe());
}

class MayberksMe extends StatelessWidget {
  const MayberksMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}
