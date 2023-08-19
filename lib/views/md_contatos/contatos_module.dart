import 'package:flutter_modular/flutter_modular.dart';
import 'package:lave_em_casa_flutter/views/md_contatos/contatos_page.dart';

class ContatosModule extends Module {
  void binds(i) {
    // i.addLazySingleton();
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const ContatosPage());
    //  r.module('/contatos', module: ContatosModule());
  }
}
