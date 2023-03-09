import 'package:flutter/material.dart';
import '../constants/images.dart';


class DashboardProfileCircle extends StatelessWidget {
  const DashboardProfileCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      minRadius: 45,
      backgroundColor: Colors.white,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(45),
        child: Image.asset(MayberksProfileImage),
      ),
    );
  }
}
