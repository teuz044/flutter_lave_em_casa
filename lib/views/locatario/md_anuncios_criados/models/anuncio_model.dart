
class AnuncioModel {
  final int id;
  final String descricao;
  final bool disponivel;
  final int proprietarioId;
  final String titulo;
  final double valorLavagem;

  AnuncioModel(this.id, this.descricao, this.disponivel, this.proprietarioId, this.titulo, this.valorLavagem);
}