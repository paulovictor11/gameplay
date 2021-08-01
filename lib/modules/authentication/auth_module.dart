import 'package:flutter_modular/flutter_modular.dart';

import 'presenter/auth_page.dart';

class AuthModule extends Module {

  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    new ChildRoute('', child: (_, args) => new AuthPage())
  ];
}