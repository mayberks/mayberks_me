import 'package:flutter/material.dart';
import 'package:mayberks_me/ui/dashboard/front_layer.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return const MediaQuery(
      data: MediaQueryData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        color: Color.fromARGB(255, 20, 20, 20),
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 20, 20, 20),
          body: SingleChildScrollView(
            child: DashboardFrontLayer(),
          ),
        ),
      ),
    );
  }
}
