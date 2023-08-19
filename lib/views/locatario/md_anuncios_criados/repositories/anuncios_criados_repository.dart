import 'dart:math';

import 'package:dio/dio.dart';

import '../models/anuncio_model.dart';

abstract class AnunciosCriadosRepository {
  final dio = Dio();

  Future<List<AnuncioModel>> getAnuncios() async {
    final response = await dio.get('minhaApi');
    try {
      final response = await dio.get('minhaApi');
      List<dynamic> responseData = response.data;

      // Mapear os dados da resposta para uma lista de AnuncioModel
      List<AnuncioModel> anuncios = responseData.map((data) {
        return AnuncioModel(
          data['id'],
          data['descricao'],
          data['disponivel'],
          data['proprietarioId'],
          data['titulo'],
          data['valorLavagem'].toDouble(),
        );
      }).toList();
      return anuncios;
    } catch (e) {
      throw Exception('Erro ao buscar anúncios: $e');
    }
  }
}
