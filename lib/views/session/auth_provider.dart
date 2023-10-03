import 'package:flutter/foundation.dart';

class AuthProvider with ChangeNotifier {
  Map<String, dynamic>? _usuarioModel;

  Map<String, dynamic>? get usuarioModel => _usuarioModel;

  void setUsuarioModel(Map<String, dynamic> usuarioModel) {
    _usuarioModel = usuarioModel;
    notifyListeners();
  }

  void clearUsuarioModel() {
    _usuarioModel = null;
    notifyListeners();
  }
}