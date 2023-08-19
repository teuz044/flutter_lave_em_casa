import 'package:flutter_modular/flutter_modular.dart';
import 'package:lave_em_casa_flutter/views/primeira_page_module.dart';

class AppModule extends Module{
   @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('/', module: PrimeiraPageModule());
  }
}