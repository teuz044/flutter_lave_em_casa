
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lave_em_casa_flutter/views/locatario/md_anuncios_criados/anuncios_criados_module.dart';
import 'package:lave_em_casa_flutter/views/md_cadastro/cadastro_module.dart';
import 'package:lave_em_casa_flutter/views/proprietario/md_login_proprietario/login_proprietario_page.dart';
import 'package:lave_em_casa_flutter/views/proprietario/md_home_proprietario/home_proprietario_module.dart';

class LoginProprietarioModule extends Module{
  @override
  void binds(i) {
    // i.addLazySingleton();
  }

  @override
  void routes(r) {
   r.child('/', child: (context) => const LoginPage());
   r.module('/anuncios_criados', module: AnunciosCriadosModule());
   r.module('/home_proprietario', module: HomeProprietarioModule());
   r.module('/cadastro', module: CadastroModule());
  }
  
}