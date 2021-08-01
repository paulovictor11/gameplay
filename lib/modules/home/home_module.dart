import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/home_page.dart';

class HomeModule extends Module {

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    new ChildRoute('/', child: (_, args) => new HomePage())
  ];
}