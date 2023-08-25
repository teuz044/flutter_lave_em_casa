import 'package:flutter_modular/flutter_modular.dart';
import 'package:lave_em_casa_flutter/views/proprietario/md_home_proprietario/home_proprietario_page.dart';

class HomeProprietarioModule extends Module {
  @override
  void binds(i) {
    // i.addLazySingleton();
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomeProprietarioPage());
    // r.module('/criar_anuncio', module: HomeProprietarioModule());
  }
}
