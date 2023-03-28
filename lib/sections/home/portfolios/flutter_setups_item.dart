import 'package:flutter/material.dart';
import 'package:mayberks_me/components/medium_text.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/utilities/responsive.dart';

/// the flutter & minecraft setups item.
class FlutterSetupsItem extends StatefulWidget {
  const FlutterSetupsItem({Key? key}) : super(key: key);

  @override
  State<FlutterSetupsItem> createState() => _FlutterSetupsItemState();
}

class _FlutterSetupsItemState extends State<FlutterSetupsItem> {
  @override
  Widget build(BuildContext context) {
    return isMobile(context)
        ? Column(
            children: [
              portfolioItem(
                'assets/images/flutter_projects.png',
                'Flutter projects',
                'Click to preview my flutter projects.',
                () {
                  Navigator.pushNamed(context, '/flutter-portfolios');
                },
              ),
              isMobile(context)
                  ? heightTen
                  : isBigDesktop(context)
                      ? widthFifteen
                      : widthTen,
              portfolioItem(
                'assets/images/minecraft_setups.png',
                'Minecraft Setups',
                'Click to preview my minecraft setups.',
                () {
                  Navigator.pushNamed(context, '/minecraft-setups');
                },
              ),
            ],
          )
        : Row(
            children: [
              Expanded(
                child: portfolioItem(
                  'assets/images/flutter_projects.png',
                  'Flutter projects',
                  'Click to preview my flutter projects.',
                  () {
                    Navigator.pushNamed(context, '/flutter-portfolios');
                  },
                ),
              ),
              isBigDesktop(context) ? widthThirty : widthFifteen,
              Expanded(
                child: portfolioItem(
                  'assets/images/minecraft_setups.png',
                  'Minecraft Setups',
                  'Click to preview my minecraft setups.',
                  () {
                    Navigator.pushNamed(context, '/minecraft-setups');
                  },
                ),
              ),
            ],
          );
  }

  Widget portfolioItem(
    String image,
    String title,
    String description,
    GestureTapCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Opacity(
                  opacity: 0.3,
                  child: Container(
                    color: const Color(0xFF000000),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  mediumText(
                    title,
                    context,
                    color: whiteColor,
                    fontfamily: 'Sora',
                    weight: FontWeight.w700,
                    size: isMobile(context) ? 18 : 8,
                  ),
                  heightTen,
                  smallText(
                    description,
                    context,
                    color: whiteColor,
                    size: isMobile(context) ? 12 : 6,
                    overflow: TextOverflow.ellipsis,
                    fontfamily: 'Sora',
                    weight: FontWeight.w400,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
