import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  late Timer timer;

  void _timerCallback() {
    timer = Timer(
      const Duration(seconds: 10),
      () => Modular.to.popAndPushNamed("/four"),
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
      onTapDown: (tapDown) {
        if (timer != null) {
          timer.cancel();
        }
        _timerCallback();
      },
      behavior: HitTestBehavior.translucent,
      child: Text("Page Three"),
    );
  }
}
