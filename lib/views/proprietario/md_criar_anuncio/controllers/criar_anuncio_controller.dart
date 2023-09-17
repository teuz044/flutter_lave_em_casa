import 'package:flutter/material.dart';
import 'package:lave_em_casa_flutter/views/locatario/md_anuncios_criados/models/anuncio_model.dart';
import 'package:lave_em_casa_flutter/views/proprietario/md_criar_anuncio/repositories/criar_anuncio_respository.dart';

class CriarAnuncioController {
  var repository = CriarAnuncioRespository();
  bool isLoading = false;
  var lstAnuncios = <AnuncioModel>[];
  final descricaoEC = TextEditingController();
  final tituloEC = TextEditingController();
  final valorLavagemEC = TextEditingController();
  final cidadeEC = TextEditingController();

  Future<void> setAnuncio() async {
    isLoading = true;
    await repository.postAnuncios(
        4,
        AnuncioModel(
            descricao: descricaoEC.text,
            disponivel: true,
            proprietarioId: 4,
            titulo: tituloEC.text,
            valorLavagem: double.tryParse(valorLavagemEC.text) ?? 0,
            cidade: cidadeEC.text, id: 0));
    isLoading = false;
  }
}
