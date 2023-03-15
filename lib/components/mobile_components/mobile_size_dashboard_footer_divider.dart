import 'package:flutter/material.dart';

class MobileSizeDashboardFooterDivider extends StatelessWidget {
  const MobileSizeDashboardFooterDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Spacer(
          flex: 9,
        ),
        Expanded(
          flex: 10,
          child: Divider(
            thickness: 0.5,
            color: Color.fromARGB(255, 89, 89, 89),
          ),
        ),
        Spacer(
          flex: 10,
        ),
      ],
    );
  }
}
