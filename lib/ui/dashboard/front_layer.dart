import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mayberks_me/constants/svg.dart';

class DashboardFrontLayer extends StatelessWidget {
  const DashboardFrontLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 10,
            child: Row(
              children: [
                Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: SvgPicture.asset(DashboardHeaderIconImage),
                  ),
                ),
                Spacer(
                  flex: 7,
                ),
                Expanded(
                  flex: 5,
                  child: Container(),
                ),
                Spacer(
                  flex: 10,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 20,
          ),
          Expanded(flex: 40, child: Container()),
          Spacer(
            flex: 10,
          ),
        ],
      ),
    );
  }
}
