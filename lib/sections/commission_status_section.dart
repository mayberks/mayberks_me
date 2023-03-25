import 'package:flutter/material.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/constants/colors.dart';

class StatusData {
  bool commissionStatus;

  StatusData({this.commissionStatus = false});
}

class CommissionStatus extends StatelessWidget {
  final statusData = StatusData(commissionStatus: true);

  CommissionStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: smallText(
        statusData.commissionStatus
            ? "I am currently accepting all commission requests."
            : "I am not accepting any commission at the moment.",
        context,
        size: 6,
        color: statusData.commissionStatus ? greenColor : greyColor,
      ),
    );
  }
}
