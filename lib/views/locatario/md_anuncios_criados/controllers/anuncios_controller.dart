
import 'package:lave_em_casa_flutter/views/locatario/md_anuncios_criados/models/anuncio_model.dart';
import 'package:lave_em_casa_flutter/views/locatario/md_anuncios_criados/repositories/anuncios_criados_repository.dart';

class AnunciosController {
  AnunciosCriadosRepository _anunciosCriadosRepository = AnunciosCriadosRepository();

  var lstAnuncios = <AnuncioModel>[];

  Future<void> getAnuncios () async{
    try {
    lstAnuncios = await _anunciosCriadosRepository.getAnuncios();
      
    } catch (e) {
      throw Exception('Erro ao buscar anuncios');
    }
  }
}