
import 'package:dio/dio.dart';

import '../../locatario/md_anuncios_criados/models/anuncio_model.dart';

class HomeRepository {
  final dio = Dio();

  Future<List<AnuncioModel>> getAnunciosPorCidade(String cidade) async {
    try {
      final response = await dio.get('http://192.168.1.15:8080/anuncios/$cidade');
      return (response.data as List)
          .map((e) => AnuncioModel.fromMap(e))
          .toList();
    } catch (e) {
      throw Exception('Erro ao buscar anúncios: $e');
    }
  }
}