// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AnuncioModel {
   int? id;
   String? descricao;
   bool? disponivel;
   int? proprietarioId;
   String? titulo;
   double? valorLavagem;
  String? cidade;
  AnuncioModel({
    this.id,
    this.descricao,
    this.disponivel,
    this.proprietarioId,
    this.titulo,
    this.valorLavagem,
    this.cidade,
  });
 

  AnuncioModel copyWith({
    int? id,
    String? descricao,
    bool? disponivel,
    int? proprietarioId,
    String? titulo,
    double? valorLavagem,
    String? cidade,
  }) {
    return AnuncioModel(
      id: id ?? this.id,
      descricao: descricao ?? this.descricao,
      disponivel: disponivel ?? this.disponivel,
      proprietarioId: proprietarioId ?? this.proprietarioId,
      titulo: titulo ?? this.titulo,
      valorLavagem: valorLavagem ?? this.valorLavagem,
      cidade: cidade ?? this.cidade,
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
      'cidade': cidade,
    };
  }

  factory AnuncioModel.fromMap(Map<String, dynamic> map) {
    return AnuncioModel(
      id: map['id'] != null ? map['id'] as int : null,
      descricao: map['descricao'] != null ? map['descricao'] as String : null,
      disponivel: map['disponivel'] != null ? map['disponivel'] as bool : null,
      proprietarioId: map['proprietarioId'] != null ? map['proprietarioId'] as int : null,
      titulo: map['titulo'] != null ? map['titulo'] as String : null,
      valorLavagem: map['valorLavagem'] != null ? map['valorLavagem'] as double : null,
      cidade: map['cidade'] != null ? map['cidade'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AnuncioModel.fromJson(String source) => AnuncioModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AnuncioModel(id: $id, descricao: $descricao, disponivel: $disponivel, proprietarioId: $proprietarioId, titulo: $titulo, valorLavagem: $valorLavagem, cidade: $cidade)';
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
      other.valorLavagem == valorLavagem &&
      other.cidade == cidade;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      descricao.hashCode ^
      disponivel.hashCode ^
      proprietarioId.hashCode ^
      titulo.hashCode ^
      valorLavagem.hashCode ^
      cidade.hashCode;
  }
}
