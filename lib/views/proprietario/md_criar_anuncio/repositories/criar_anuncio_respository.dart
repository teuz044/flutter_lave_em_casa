import 'package:dio/dio.dart';
import 'package:lave_em_casa_flutter/views/locatario/md_anuncios_criados/models/anuncio_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CriarAnuncioRespository {
  final dio = Dio();

  Future<int> postAnuncios(int proprietarioId, AnuncioModel anuncio) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? token = prefs.getString('token');
    print(token);
    try {
      final response =
          await dio.post('http://192.168.1.21:8080/anuncios/$proprietarioId',
              data: anuncio.toJson(),
              options: Options(headers: {
                'Authorization': 'Bearer $token',
              }));
      return response.statusCode!;
    } catch (e) {
      throw Exception('Erro ao buscar salvar: $e');
    }
  }
}
