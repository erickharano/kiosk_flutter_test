import 'package:flutter_modular/flutter_modular.dart';

import 'pages/page_four.dart';
import 'pages/page_one.dart';
import 'pages/page_three.dart';
import 'pages/page_two.dart';

class DesignSystemModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute("/", child: (context, args) => const PageOne()),
        ChildRoute("/three", child: (context, args) => const PageThree()),
        ChildRoute("/two", child: (context, args) => const PageTwo()),
        ChildRoute("/four", child: (context, args) => const PageFour()),
      ];
}
