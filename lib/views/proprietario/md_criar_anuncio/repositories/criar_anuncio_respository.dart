
import 'package:dio/dio.dart';
import 'package:lave_em_casa_flutter/views/locatario/md_anuncios_criados/models/anuncio_model.dart';

class CriarAnuncioRespository {
  final dio = Dio();

  Future<int> postAnuncios(int proprietarioId, AnuncioModel anuncio) async {
    try {
      final response =
          await dio.post('http://192.168.1.7:8080/anuncios/$proprietarioId', data: anuncio.toJson());
      return response.statusCode!;
    } catch (e) {
      throw Exception('Erro ao buscar salvar: $e');
    }
  }
}
