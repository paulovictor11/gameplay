import 'package:flutter_modular/flutter_modular.dart';

import 'authentication/auth_module.dart';
import 'detail/detail_module.dart';
import 'home/home_module.dart';
import 'schedule/schedule_module.dart';
// import 'splash/splash_module.dart';

class AppModule extends Module {

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    // new ModuleRoute('/', module: new SplashModule()),
    new ModuleRoute('/', module: new AuthModule()),
    new ModuleRoute('/home', module: new HomeModule()),
    new ModuleRoute('/schedule', module: new ScheduleModule()),
    new ModuleRoute('/detail', module: new DetailModule()),
  ];
}