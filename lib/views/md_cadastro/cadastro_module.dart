import 'package:flutter_modular/flutter_modular.dart';
import 'package:lave_em_casa_flutter/views/md_cadastro/cadastro_page.dart';

import '../locatario/md_anuncios_criados/anuncios_criados_module.dart';

class CadastroModule extends Module {
  void binds(i) {
    // i.addLazySingleton();
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const CadastroPage());
    r.module('/anuncios_criados', module: AnunciosCriadosModule());
    //  r.module('/login', module: LoginModule());
  }
}
