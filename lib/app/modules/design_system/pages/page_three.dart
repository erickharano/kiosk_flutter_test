import 'package:flutter/material.dart';

import '../../../shared/presenter/timer/screen_inactive.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  late ScreenInactive screenInactive;

  void _timerCallback() {
    screenInactive = ScreenInactive(route: "/four", seconds: 5);
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
      child: const Text("Page Three"),
    );
  }
}
