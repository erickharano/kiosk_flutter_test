import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Modular.to.pushReplacementNamed("/"),
      child: const Text("Page Two"),
    );
  }
}
