
import 'package:lave_em_casa_flutter/views/md_home/repositories/home_repository.dart';

import '../../locatario/md_anuncios_criados/models/anuncio_model.dart';

class HomeController {
  HomeRepository _homeRepository = HomeRepository();

  var lstAnuncios = <AnuncioModel>[];

  bool isLoading = false;

  Future<void> getAnunciosPorCidade() async{
    isLoading = true;
    try {
    lstAnuncios = await _homeRepository.getAnunciosPorCidade('Recife');
    isLoading = false;
    } catch (e) {
      print(e.toString());
      isLoading = false;
      throw Exception('Erro ao buscar anuncios');
    }
  }
}