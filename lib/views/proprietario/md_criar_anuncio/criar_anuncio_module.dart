
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lave_em_casa_flutter/views/proprietario/md_criar_anuncio/criar_anuncio_page.dart';

class CriarAnuncioModule extends Module{
   void binds(i) {
    // i.addLazySingleton();
  }

   @override
  void routes(r) {
    r.child('/', child: (context) => const CriarAnuncioPage());
    // r.module('/home', module: HomeModule());
  }
}