
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lave_em_casa_flutter/views/escolha_login_cadastro/escolha_login_page.dart';

import '../locatario/md_login_locatario/login_locatario_module.dart';
import '../proprietario/md_login_proprietario/login_proprietario_module.dart';

class EscolhaLoginModule extends Module{
  @override
  void binds(i) {
    // i.addLazySingleton();
  }

   @override
  void routes(r) {
    r.child('/', child: (context) => const EscolhaLoginPage());
    r.module('/login_proprietario', module: LoginProprietarioModule());
    r.module('/login_locatario', module: LoginLocatarioModule());
  }
}