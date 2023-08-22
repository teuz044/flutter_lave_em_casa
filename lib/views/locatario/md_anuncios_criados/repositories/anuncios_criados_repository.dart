import 'package:dio/dio.dart';

import '../models/anuncio_model.dart';

 class AnunciosCriadosRepository {
  final dio = Dio();

  Future<List<AnuncioModel>> getAnuncios() async {
    try {
      final response = await dio.get('minhaApi');
      return (response.data as List)
          .map((e) => AnuncioModel.fromMap(e))
          .toList();
    } catch (e) {
      throw Exception('Erro ao buscar anúncios: $e');
    }
  }
}
