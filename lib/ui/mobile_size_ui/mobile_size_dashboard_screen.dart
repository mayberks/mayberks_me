import 'package:flutter/material.dart';
import 'package:mayberks_me/ui/mobile_size_ui/mobile_size_front_layer.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class MobileSizeDashboardScreen extends StatefulWidget {
  const MobileSizeDashboardScreen({Key? key}) : super(key: key);

  @override
  State<MobileSizeDashboardScreen> createState() =>
      _MobileSizeDashboardScreenState();
}

class _MobileSizeDashboardScreenState extends State<MobileSizeDashboardScreen> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: const MediaQueryData(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          color: const Color.fromARGB(255, 20, 20, 20),
          home: Scaffold(
            resizeToAvoidBottomInset: false,
            extendBody: false,
            backgroundColor: const Color.fromARGB(255, 20, 20, 20),
            body: WebSmoothScroll(
              controller: _scrollController,
              scrollOffset: 100,
              animationDuration: 600,
              curve: Curves.easeInOutCirc,
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                controller: _scrollController,
                child: const MobileSizeDashboardFrontLayer(),
              ),
            ),
          ),
        ));
  }
}
