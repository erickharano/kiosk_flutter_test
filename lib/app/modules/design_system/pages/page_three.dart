import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PageThree extends StatefulWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Modular.to.popAndPushNamed("/four"),
    );

    return const Center(
      child: Text("Page Three"),
    );
  }
}
