
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lave_em_casa_flutter/views/locatario/md_anuncios_criados/anuncios_criados_page.dart';

class AnunciosCriadosModule extends Module{
  void binds(i) {
    // i.addLazySingleton();
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const AnunciosCriadosPage());
    // r.module('/anuncios_criados', module: AnunciosCriadosModule());
    //  r.module('/login', module: LoginModule());
  }
}