// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


class AnuncioModel {
  final int id;
  final String descricao;
  final bool disponivel;
  final int proprietarioId;
  final String titulo;
  final double valorLavagem;
  AnuncioModel({
    required this.id,
    required this.descricao,
    required this.disponivel,
    required this.proprietarioId,
    required this.titulo,
    required this.valorLavagem,
  });



  AnuncioModel copyWith({
    int? id,
    String? descricao,
    bool? disponivel,
    int? proprietarioId,
    String? titulo,
    double? valorLavagem,
  }) {
    return AnuncioModel(
      id: id ?? this.id,
      descricao: descricao ?? this.descricao,
      disponivel: disponivel ?? this.disponivel,
      proprietarioId: proprietarioId ?? this.proprietarioId,
      titulo: titulo ?? this.titulo,
      valorLavagem: valorLavagem ?? this.valorLavagem,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'descricao': descricao,
      'disponivel': disponivel,
      'proprietarioId': proprietarioId,
      'titulo': titulo,
      'valorLavagem': valorLavagem,
    };
  }

  factory AnuncioModel.fromMap(Map<String, dynamic> map) {
    return AnuncioModel(
      id: map['id'] as int,
      descricao: map['descricao'] as String,
      disponivel: map['disponivel'] as bool,
      proprietarioId: map['proprietarioId'] as int,
      titulo: map['titulo'] as String,
      valorLavagem: map['valorLavagem'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnuncioModel.fromJson(String source) => AnuncioModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AnuncioModel(id: $id, descricao: $descricao, disponivel: $disponivel, proprietarioId: $proprietarioId, titulo: $titulo, valorLavagem: $valorLavagem)';
  }

  @override
  bool operator ==(covariant AnuncioModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.descricao == descricao &&
      other.disponivel == disponivel &&
      other.proprietarioId == proprietarioId &&
      other.titulo == titulo &&
      other.valorLavagem == valorLavagem;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      descricao.hashCode ^
      disponivel.hashCode ^
      proprietarioId.hashCode ^
      titulo.hashCode ^
      valorLavagem.hashCode;
  }
}
