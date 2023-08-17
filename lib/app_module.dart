
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lave_em_casa_flutter/views/md_cadastro/cadastro_page.dart';
import 'package:lave_em_casa_flutter/views/md_contatos/contatos_page.dart';
import 'package:lave_em_casa_flutter/views/md_home/home_page.dart';
import 'package:lave_em_casa_flutter/views/md_login/login_page.dart';
import 'package:lave_em_casa_flutter/views/primeira_page.dart';

class AppModule extends Module{
   @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const PrimeiraPage());
    r.child('/home', child: (context) => const HomePage());
    r.child('/contatos', child: (context) => const ContatosPage());
    r.child('/login', child: (context) =>  const LoginPage());
    r.child('/cadastro', child: (context) =>  const CadastroPage());
  }
}