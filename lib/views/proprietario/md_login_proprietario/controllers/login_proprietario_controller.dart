import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../repositories/login_proprietario_repository.dart';

class LoginProprietarioController {
  LoginProprietarioRepository loginProprietarioRepository =
      LoginProprietarioRepository();

  String errorMessage = '';
  late Map<String, dynamic>? usuarioModel;
  final cpfEC = TextEditingController();
  final senhaEC = TextEditingController();

  bool isLoading = false;

  Future<bool> login(BuildContext context) async {
    try {
      final Map<String, dynamic>? loginData =
          await loginProprietarioRepository.login(cpfEC.text, senhaEC.text, context);
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? token = loginData?['token'];

      isLoading = true;
      if (token == null || token == '') {
        isLoading = false;
        errorMessage = 'Login não autorizado';
        return false;
      } else {
        usuarioModel = loginData?['user'];
        print(usuarioModel);
        await prefs.setString('token', token);
        isLoading = false;
        return true;
      }
    } catch (e) {
      isLoading = false;
      throw Exception('Erro ao buscar anuncios');
    }
  }
}
