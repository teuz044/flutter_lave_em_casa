import 'package:dio/dio.dart';

import '../models/anuncio_model.dart';

 class AnunciosCriadosRepository {
  final dio = Dio();

  Future<List<AnuncioModel>> getAnuncios() async {
    try {
      final response = await dio.get('http://192.168.1.7:8080/anuncios');
      return (response.data as List)
          .map((e) => AnuncioModel.fromMap(e))
          .toList();
    } catch (e) {
      print(e.toString());
      throw Exception('Erro ao buscar anúncios: $e');
    }
  }
}
