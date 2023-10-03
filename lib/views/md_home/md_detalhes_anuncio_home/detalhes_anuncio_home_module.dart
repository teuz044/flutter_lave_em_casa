
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lave_em_casa_flutter/views/md_home/controllers/home_controller.dart';
import 'package:lave_em_casa_flutter/views/md_home/md_detalhes_anuncio_home/detalhes_anuncio_home_page.dart';

class DetalhesAnuncioHomeModule extends Module {
   @override
  void binds(i) {
    i.addLazySingleton(HomeController.new);
  }

  @override
  void routes(r) {
   r.child('/', child: (context) =>  DetalhesAnuncioHomePage(controller: Modular.get()));
  }
}