import 'package:flutter/material.dart';

import '../repositories/login_proprietario_repository.dart';

class LoginProprietarioController {
  LoginProprietarioRepository loginProprietarioRepository =
      LoginProprietarioRepository();

  String errorMessage = '';

  final cpfEC = TextEditingController();
  final senhaEC = TextEditingController();

  bool isLoading = false;

  Future<bool> login() async {
    try {
      isLoading = true;
      String token = await loginProprietarioRepository.login(cpfEC.text, senhaEC.text) ?? '';
      if (token == '') {
        isLoading = false;
        errorMessage = 'Login não autorizado';
        return false;
      } else {
        isLoading = false;
        return true;
      }
    } catch (e) {
      isLoading = false;
      throw Exception('Erro ao buscar anuncios');
    }
  }
}
