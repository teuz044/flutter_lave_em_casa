import 'package:flutter_modular/flutter_modular.dart';
import 'package:lave_em_casa_flutter/views/escolha_login_cadastro/escolha_login_module.dart';
import 'package:lave_em_casa_flutter/views/md_home/home_page.dart';
import 'package:lave_em_casa_flutter/views/md_home/md_detalhes_anuncio_home/detalhes_anuncio_home_module.dart';
import 'package:lave_em_casa_flutter/views/md_home/repositories/home_repository.dart';
import '../md_contatos/contatos_module.dart';
import 'controllers/home_controller.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    // i.addLazySingleton();
    i.addLazySingleton(HomeController.new);
    i.addLazySingleton(HomeRepository.new);
  }

  @override
  void routes(r) {
   r.child('/', child: (context) => const HomePage());
   r.module('/contatos', module: ContatosModule());
   r.module('/escolha_login', module: EscolhaLoginModule());
   r.module('/detalhes_anuncio_home', module: DetalhesAnuncioHomeModule());

  }
}
