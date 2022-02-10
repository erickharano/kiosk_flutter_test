import 'package:flutter/material.dart';

import '../../../shared/presenter/timer/screen_inactive.dart';

class PageFour extends StatefulWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  late ScreenInactive screenInactive;

  void _timerCallback() {
    screenInactive = ScreenInactive(route: "/two", seconds: 5);
    screenInactive.start();
  }

  @override
  void initState() {
    super.initState();
    _timerCallback();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (tapDown) {
        if (screenInactive != null) {
          screenInactive.cancel();
        }
        _timerCallback();
      },
      behavior: HitTestBehavior.translucent,
      child: const Center(
        child: Text("Page Four"),
      ),
    );
  }
}
