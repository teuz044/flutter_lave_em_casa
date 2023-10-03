
// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:lave_em_casa_flutter/views/md_home/repositories/home_repository.dart';

import '../../locatario/md_anuncios_criados/models/anuncio_model.dart';

class HomeController {
  HomeRepository _homeRepository = HomeRepository();

  var lstAnuncios = <AnuncioModel>[];
  final idEC = TextEditingController();
  final descricaoEC = TextEditingController();
  final tituloEC = TextEditingController();
  final valorLavagemEC = TextEditingController();
  final cidadeEC = TextEditingController();

  bool isLoading = false;

 Future<void> getAnunciosPorCidade() async {
    try {
      isLoading = true;
      lstAnuncios = await _homeRepository.getAnunciosPorCidade('Recife');
      isLoading = false;
      print(isLoading.toString());
    } catch (e) {
      print(e.toString());
      isLoading = false;
      throw Exception('Erro ao buscar anuncios');
    }
  }

  void selecionarAnuncio (int index) {
    idEC.text =  lstAnuncios[index].id.toString();
    descricaoEC.text = lstAnuncios[index].descricao ?? '';
    tituloEC.text = lstAnuncios[index].titulo ?? '';
    valorLavagemEC.text = lstAnuncios[index].valorLavagem.toString();
    cidadeEC.text = lstAnuncios[index].cidade ?? '';
  }

}
