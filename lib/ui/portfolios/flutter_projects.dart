import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mayberks_me/components/wrapper.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/sections/home/about_me_section.dart';
import 'package:mayberks_me/utilities/helper.dart';

/// the flutter projects portfolio screen.
class FlutterProjects extends StatefulWidget {
  const FlutterProjects({super.key});

  @override
  State<FlutterProjects> createState() => _FlutterProjectsState();
}

class _FlutterProjectsState extends State<FlutterProjects> {
  @override
  Widget build(BuildContext context) {
    double margin = Helper.getMargin(context);
    double size = Get.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Wrapper(
          horizontal: margin,
          vertical: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            ],
          ),
        ),
      ),
    );
  }
}
