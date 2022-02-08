import 'package:flutter_modular/flutter_modular.dart';
import 'package:kiosk_flutter_test/app/modules/design_system/design_system_module.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute("/", module: DesignSystemModule()),
      ];
}
