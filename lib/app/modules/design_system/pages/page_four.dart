import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PageFour extends StatefulWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Modular.to.popAndPushNamed("/two"),
    );

    return const Center(
      child: Text("Page Four"),
    );
  }
}
