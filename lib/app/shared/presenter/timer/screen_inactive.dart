import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';

class ScreenInactive {
  Future<Timer> timer(int seconds, String routeName) async {
    return Timer(
      Duration(seconds: seconds),
      () {
        Modular.to.pushReplacementNamed(routeName);
      },
    );
  }

  timer2(int seconds, String routeName) => Future.delayed(Duration(seconds: seconds), () => Modular.to.pushReplacementNamed(routeName));
}
