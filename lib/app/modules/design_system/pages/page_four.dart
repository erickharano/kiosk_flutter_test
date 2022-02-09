import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PageFour extends StatefulWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  late Timer timer;

  void _timerCallback() {
    timer = Timer(
      const Duration(seconds: 3),
      () => Modular.to.popAndPushNamed("/two"),
    );
  }

  @override
  void initState() {
    super.initState();
    _timerCallback();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onSecondaryTap: () {
      //   print('clique dois dedos');
      // },
      // onSecondaryLongPressEnd: (longPress) {
      //   print('deslizando');
      // },
      onTapDown: (tapDown) {
        if (timer != null) {
          timer.cancel();
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
