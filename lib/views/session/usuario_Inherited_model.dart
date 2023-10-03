import 'package:flutter/material.dart';

import 'usuario_model.dart';

class UsuarioModelInherited extends InheritedWidget {
  final UsuarioModel usuario;

  UsuarioModelInherited({
    Key? key,
    required Widget child,
    required this.usuario,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(UsuarioModelInherited oldWidget) {
    // Sempre notificar quando o widget é reconstruído
    return true;
  }

  static UsuarioModelInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<UsuarioModelInherited>()!;
  }
}
