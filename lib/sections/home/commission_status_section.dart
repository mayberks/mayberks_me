import 'package:flutter/material.dart';
import 'package:mayberks_me/components/heading.dart';
import 'package:mayberks_me/components/medium_text.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/utilities/responsive.dart';

/// the status data.
class StatusData {
  bool commissionStatus;

  StatusData({this.commissionStatus = false});
}

/// the status text widget.
class CommissionStatus extends StatelessWidget {
  final statusData = StatusData(commissionStatus: false);

  CommissionStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      automaticallyImplyLeading: false,
      backgroundColor: containerBackgroundColor,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.circle,
            color: statusData.commissionStatus ? greenColor : redColor,
            size: 14,
          ),
        ),
      ],
      title: Column(
        children: [
          mediumText(
            statusData.commissionStatus
                ? "My commission status is open!"
                : "My commission status is closed!",
            context,
            fontfamily: 'Sora',
            weight: FontWeight.w700,
            color: statusData.commissionStatus ? greenColor : redColor,
            size: 8,
          ),
        ],
      ),
    );
  }
}

//Center(
//       child: smallText(
//         statusData.commissionStatus
//             ? "I am currently accepting all commission requests."
//             : "I am not accepting any commission at the moment.",
//         context,
//         size: isMobile(context) ? 10 : 8,
//         color: statusData.commissionStatus ? greenColor : greyColor,
//       ),
//     );
