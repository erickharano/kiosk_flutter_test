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
