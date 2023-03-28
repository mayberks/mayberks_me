import 'package:flutter/material.dart';
import 'package:mayberks_me/components/medium_text.dart';
import 'package:mayberks_me/components/small_text.dart';
import 'package:mayberks_me/constants/colors.dart';
import 'package:mayberks_me/constants/spaces.dart';
import 'package:mayberks_me/utilities/responsive.dart';

/// the minecraft configurations & optimizations item.
class ConfigurationsOptimizationsItem extends StatefulWidget {
  const ConfigurationsOptimizationsItem({Key? key}) : super(key: key);

  @override
  State<ConfigurationsOptimizationsItem> createState() => _ConfigurationsOptimizationsItemState();
}

class _ConfigurationsOptimizationsItemState extends State<ConfigurationsOptimizationsItem> {
  @override
  Widget build(BuildContext context) {
    return isMobile(context)
        ? Column(
      children: [
        portfolioItem(
          'assets/images/minecraft_configurations.png',
          'Minecraft Configurations',
          'Click to preview my minecraft configurations.',
              () {
            print("Clicked portfolio item.");
          },
        ),
        isMobile(context)
            ? heightTen
            : isBigDesktop(context)
            ? widthFifteen
            : widthTen,
        portfolioItem(
          'assets/images/minecraft_optimizations.png',
          'Minecraft Optimizations',
          'Click to preview my minecraft optimizations.',
              () {
            print("Clicked portfolio item.");
          },
        ),
      ],
    )
        : Row(
      children: [
        Expanded(
          child: portfolioItem(
            'assets/images/minecraft_configurations.png',
            'Minecraft Configurations',
            'Click to preview my minecraft configurations.',
                () {
              print("Clicked portfolio item.");
            },
          ),
        ),
        isBigDesktop(context) ? widthThirty : widthFifteen,
        Expanded(
          child: portfolioItem(
            'assets/images/minecraft_optimizations.png',
            'Minecraft Optimizations',
            'Click to preview my minecraft optimizations.',
                () {
              print("Clicked portfolio item.");
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
                  opacity: 0.5,
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
                    size: isMobile(context) ? 18 : 8,
                  ),
                  heightTen,
                  smallText(
                    description,
                    context,
                    color: whiteColor,
                    size: isMobile(context) ? 12 : 6,
                    overflow: TextOverflow.ellipsis,
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