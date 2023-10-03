import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:lave_em_casa_flutter/app_module.dart';
import 'package:provider/provider.dart';

import 'views/session/auth_provider.dart';

void main() {
  runApp(ModularApp(
    module: AppModule(),
    child: MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()), // Adicione seu AuthProvider aqui
        // Outros providers, se houver
      ],
      child: const AppWidget(),
    ),
  ));
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp.router(
      title: 'My Smart App',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: Modular.routerConfig,
        debugShowCheckedModeBanner:false,
    ); //added by extension 
  }
}
