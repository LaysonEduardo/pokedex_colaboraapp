import 'package:flutter_modular/flutter_modular.dart';

import '../home/home_module.dart';
import 'welcome_page.dart';
import 'welcome_store.dart';

class WelcomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton((_) => WelcomeStore()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const WelcomePage()),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
