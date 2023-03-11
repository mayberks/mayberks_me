import 'package:flutter/material.dart';
import 'package:mayberks_me/constants/extensions.dart';
import 'package:mayberks_me/ui/dashboard/front_layer.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
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
          backgroundColor: const Color.fromARGB(255, 20, 20, 20),
          body: WebSmoothScroll(
            controller: _scrollController,
            scrollOffset: 100,
            animationDuration: 600,
            curve: Curves.easeInOutCirc,
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _scrollController,
              child: const DashboardFrontLayer(),
            ),
          ),
        ),
      ),
    );
  }
}
