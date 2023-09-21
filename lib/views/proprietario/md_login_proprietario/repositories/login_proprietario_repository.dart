
import 'package:dio/dio.dart';

class LoginProprietarioRepository {
  final String baseUrl = 'http://192.168.1.15:8080'; // Substitua pela URL da sua API.
  final Dio _dio = Dio();

  Future<String?> login(String cpf, String senha) async {
    try {
      final response = await _dio.post(
        '$baseUrl/proprietarios/login',
        data: {
          'login': cpf,
          'password': senha,
        },
      );
      if (response.statusCode == 200) {
        // Login bem-sucedido, extrair o token da resposta.
        final Map<String, dynamic> data = response.data;
        final String? token = data['token'];
        return token;
      } else {
        throw Exception('Falha no login');
      }
    } catch (e) {
      throw Exception('Erro ao fazer login: $e');
    }
  }
}