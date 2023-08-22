
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lave_em_casa_flutter/views/primeira_page.dart';

import 'md_home/home_module.dart';

class PrimeiraPageModule extends Module{
   @override
     void binds(i) {
    // i.addLazySingleton();
  }

   @override
  void routes(r) {
    r.child('/', child: (context) => const PrimeiraPage());
    r.module('/home', module: HomeModule());
  }
}