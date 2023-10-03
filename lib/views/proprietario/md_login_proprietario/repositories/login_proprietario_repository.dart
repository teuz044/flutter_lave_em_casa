import 'package:dio/dio.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../../../session/auth_provider.dart';

class LoginProprietarioRepository {
  final String baseUrl =
      'http://192.168.1.21:8080'; // Substitua pela URL da sua API.
  final Dio _dio = Dio();

  // Future<String?> login(String cpf, String senha) async {
  //   try {

  //     final response = await _dio.post(
  //       '$baseUrl/proprietarios/login',
  //       data: {
  //         'login': cpf,
  //         'password': senha,
  //       },
  //     );
  //     if (response.statusCode == 200) {
  //       // Login bem-sucedido, extrair o token da resposta.
  //       final Map<String, dynamic> data = response.data;
  //       final String? token = data['token'];
  //       return token;
  //     } else if (response.statusCode == 400){
  //       return '';
  //     }
  //   } catch (e) {
  //     return '';
  //   }
  // }

  Future<Map<String, dynamic>?> login(String cpf, String senha, BuildContext context) async {
    try {
      final response = await _dio.post(
        '$baseUrl/proprietarios/login',
        data: {
          'login': cpf,
          'password': senha,
        },
      );

      if (response.statusCode == 200) {
        // Login bem-sucedido, extrair o token e o usuárioModel da resposta.
        final Map<String, dynamic> data = response.data;
        final String? token = data['token'];
        final Map<String, dynamic>? usuarioModel = data['user'];

        if (token != null && usuarioModel != null) {
           final authProvider = Provider.of<AuthProvider>(context, listen: false);
        authProvider.setUsuarioModel(usuarioModel);
          return {
            'token': token,
            'user': usuarioModel,
          };
        }
      } else if (response.statusCode == 400) {
        return null; // Retorne null em caso de erro
      }
    } catch (e) {
      return null; // Retorne null em caso de exceção
    }
  }
}
