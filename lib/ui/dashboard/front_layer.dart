import 'package:flutter/material.dart';
import 'package:mayberks_me/constants/images.dart';

class DashboardFrontLayer extends StatelessWidget {
  const DashboardFrontLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Spacer(
            flex: 3,
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: CircleAvatar(
                minRadius: 95,
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(95),
                  child: Image.asset(MayberksProfileImage),
                ),
              ),
            ),
          ),
          Spacer(
            flex: 5,
          ),
          Expanded(flex: 6, child: Container()),
          Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}
