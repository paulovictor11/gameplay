import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/schedule_page.dart';

class ScheduleModule extends Module {

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    new ChildRoute('/', child: (_, args) => new SchedulePage())
  ];
}