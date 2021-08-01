import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/detail_page.dart';

class DetailModule extends Module {

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    new ChildRoute('/', child: (_, args) => new DetailPage())
  ];
}