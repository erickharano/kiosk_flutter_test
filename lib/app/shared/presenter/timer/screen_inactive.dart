import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';

class ScreenInactive {
  final int seconds;
  final String route;

  late Timer _start;

  ScreenInactive({
    required this.seconds,
    required this.route,
  });

  void start() {
    _start = Timer(
      Duration(seconds: seconds),
      () {
        Modular.to.pushReplacementNamed(route);
      },
    );
  }

  void cancel() {
    _start.cancel();
  }
}


// EXEMPLO DE TELA COM TIMER

// import 'package:flutter/material.dart';
// import '../../../shared/presenter/timer/screen_inactive.dart';

// class PageExample extends StatefulWidget {
//   const PageExample({Key? key}) : super(key: key);

//   @override
//   State<PageExample> createState() => _PageExample();
// }

// class _PageExample extends State<PageExample> {
//   late ScreenInactive screenInactive;

//   void _timerCallback() {
//     screenInactive = ScreenInactive(route: "/two", seconds: 5);
//     screenInactive.start();
//   }

//   @override
//   void initState() {
//     super.initState();
//     _timerCallback();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTapDown: (tapDown) {
//         if (screenInactive != null) {
//           screenInactive.cancel();
//         }
//         _timerCallback();
//       },
//       behavior: HitTestBehavior.translucent,
//       child: const Center(
//         child: Text("Page Four"),
//       ),
//     );
//   }
// }
