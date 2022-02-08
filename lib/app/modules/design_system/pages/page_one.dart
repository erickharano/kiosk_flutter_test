import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Page One"),
        const SizedBox(height: 100),
        TextButton(
          onPressed: () {
            Modular.to.pushReplacementNamed("/");
          },
          child: const Text("Page One >>"),
        ),
        TextButton(
          onPressed: () {
            Modular.to.pushReplacementNamed("/two");
          },
          child: const Text("Page Two >>"),
        ),
        TextButton(
          onPressed: () {
            Modular.to.pushReplacementNamed("/three");
          },
          child: const Text("Page Three >>"),
        ),
        TextButton(
          onPressed: () {
            Modular.to.pushReplacementNamed("/four");
          },
          child: const Text("Page Four >>"),
        ),
      ],
    );
  }
}
