import 'package:flutter_modular/flutter_modular.dart';
import 'package:lave_em_casa_flutter/views/locatario/md_home/home_page.dart';

import '../../md_contatos/contatos_module.dart';
import '../../md_login/login_module.dart';

class HomeModule extends Module {
  void binds(i) {
    // i.addLazySingleton();
  }

  @override
  void routes(r) {
   r.child('/', child: (context) => const HomePage());
   r.module('/contatos', module: ContatosModule());
   r.module('/login', module: LoginModule());
  }
}
