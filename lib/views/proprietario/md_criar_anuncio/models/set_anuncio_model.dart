// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'usuarios_proprietarios_model.dart';

class AnuncioModel {
  int id;
  String titulo;
  String descricao;
  String cidade;
  double valorLavagem;
  bool disponivel;
  UsuariosProprietariosModel proprietario;
  AnuncioModel({
    required this.id,
    required this.titulo,
    required this.descricao,
    required this.cidade,
    required this.valorLavagem,
    required this.disponivel,
    required this.proprietario,
  });

  AnuncioModel copyWith({
    int? id,
    String? titulo,
    String? descricao,
    String? cidade,
    double? valorLavagem,
    bool? disponivel,
    UsuariosProprietariosModel? proprietario,
  }) {
    return AnuncioModel(
      id: id ?? this.id,
      titulo: titulo ?? this.titulo,
      descricao: descricao ?? this.descricao,
      cidade: cidade ?? this.cidade,
      valorLavagem: valorLavagem ?? this.valorLavagem,
      disponivel: disponivel ?? this.disponivel,
      proprietario: proprietario ?? this.proprietario,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'titulo': titulo,
      'descricao': descricao,
      'cidade': cidade,
      'valorLavagem': valorLavagem,
      'disponivel': disponivel,
      'proprietario': proprietario.toMap(),
    };
  }

  factory AnuncioModel.fromMap(Map<String, dynamic> map) {
    return AnuncioModel(
      id: map['id'] as int,
      titulo: map['titulo'] as String,
      descricao: map['descricao'] as String,
      cidade: map['cidade'] as String,
      valorLavagem: map['valorLavagem'] as double,
      disponivel: map['disponivel'] as bool,
      proprietario: UsuariosProprietariosModel.fromMap(map['proprietario'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory AnuncioModel.fromJson(String source) => AnuncioModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AnuncioModel(id: $id, titulo: $titulo, descricao: $descricao, cidade: $cidade, valorLavagem: $valorLavagem, disponivel: $disponivel, proprietario: $proprietario)';
  }

  @override
  bool operator ==(covariant AnuncioModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.titulo == titulo &&
      other.descricao == descricao &&
      other.cidade == cidade &&
      other.valorLavagem == valorLavagem &&
      other.disponivel == disponivel &&
      other.proprietario == proprietario;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      titulo.hashCode ^
      descricao.hashCode ^
      cidade.hashCode ^
      valorLavagem.hashCode ^
      disponivel.hashCode ^
      proprietario.hashCode;
  }
}
