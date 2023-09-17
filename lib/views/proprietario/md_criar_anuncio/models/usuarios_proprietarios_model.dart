// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'set_anuncio_model.dart';

class UsuariosProprietariosModel {
  int id;
  String cpf;
  String nome;
  String email;
  DateTime dataNascimentoProprietario;
  String senha;
  String telefone;
  String endereco;
  String cep;
  double rendaTotal;
  double pesoSuportadoMaquina;
  int quantidadeMaquinas;
  List<AnuncioModel> anuncios;
  int quantidadeAnuncios;
  UsuariosProprietariosModel({
    required this.id,
    required this.cpf,
    required this.nome,
    required this.email,
    required this.dataNascimentoProprietario,
    required this.senha,
    required this.telefone,
    required this.endereco,
    required this.cep,
    required this.rendaTotal,
    required this.pesoSuportadoMaquina,
    required this.quantidadeMaquinas,
    required this.anuncios,
    required this.quantidadeAnuncios,
  });

  UsuariosProprietariosModel copyWith({
    int? id,
    String? cpf,
    String? nome,
    String? email,
    DateTime? dataNascimentoProprietario,
    String? senha,
    String? telefone,
    String? endereco,
    String? cep,
    double? rendaTotal,
    double? pesoSuportadoMaquina,
    int? quantidadeMaquinas,
    List<AnuncioModel>? anuncios,
    int? quantidadeAnuncios,
  }) {
    return UsuariosProprietariosModel(
      id: id ?? this.id,
      cpf: cpf ?? this.cpf,
      nome: nome ?? this.nome,
      email: email ?? this.email,
      dataNascimentoProprietario:
          dataNascimentoProprietario ?? this.dataNascimentoProprietario,
      senha: senha ?? this.senha,
      telefone: telefone ?? this.telefone,
      endereco: endereco ?? this.endereco,
      cep: cep ?? this.cep,
      rendaTotal: rendaTotal ?? this.rendaTotal,
      pesoSuportadoMaquina: pesoSuportadoMaquina ?? this.pesoSuportadoMaquina,
      quantidadeMaquinas: quantidadeMaquinas ?? this.quantidadeMaquinas,
      anuncios: anuncios ?? this.anuncios,
      quantidadeAnuncios: quantidadeAnuncios ?? this.quantidadeAnuncios,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'cpf': cpf,
      'nome': nome,
      'email': email,
      'dataNascimentoProprietario':
          dataNascimentoProprietario.millisecondsSinceEpoch,
      'senha': senha,
      'telefone': telefone,
      'endereco': endereco,
      'cep': cep,
      'rendaTotal': rendaTotal,
      'pesoSuportadoMaquina': pesoSuportadoMaquina,
      'quantidadeMaquinas': quantidadeMaquinas,
      'anuncios': anuncios.map((x) => x.toMap()).toList(),
      'quantidadeAnuncios': quantidadeAnuncios,
    };
  }

  factory UsuariosProprietariosModel.fromMap(Map<String, dynamic> map) {
    return UsuariosProprietariosModel(
      id: map['id'] as int,
      cpf: map['cpf'] as String,
      nome: map['nome'] as String,
      email: map['email'] as String,
      dataNascimentoProprietario: DateTime.fromMillisecondsSinceEpoch(
          map['dataNascimentoProprietario'] as int),
      senha: map['senha'] as String,
      telefone: map['telefone'] as String,
      endereco: map['endereco'] as String,
      cep: map['cep'] as String,
      rendaTotal: map['rendaTotal'] as double,
      pesoSuportadoMaquina: map['pesoSuportadoMaquina'] as double,
      quantidadeMaquinas: map['quantidadeMaquinas'] as int,
      anuncios: List<AnuncioModel>.from(
        (map['anunciosModel'] as List<int>).map<AnuncioModel>(
          (x) => AnuncioModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      quantidadeAnuncios: map['quantidadeAnuncios'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory UsuariosProprietariosModel.fromJson(String source) =>
      UsuariosProprietariosModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UsuariosProprietariosModel(id: $id, cpf: $cpf, nome: $nome, email: $email, dataNascimentoProprietario: $dataNascimentoProprietario, senha: $senha, telefone: $telefone, endereco: $endereco, cep: $cep, rendaTotal: $rendaTotal, pesoSuportadoMaquina: $pesoSuportadoMaquina, quantidadeMaquinas: $quantidadeMaquinas, anuncios: $anuncios, quantidadeAnuncios: $quantidadeAnuncios)';
  }

  @override
  bool operator ==(covariant UsuariosProprietariosModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.cpf == cpf &&
        other.nome == nome &&
        other.email == email &&
        other.dataNascimentoProprietario == dataNascimentoProprietario &&
        other.senha == senha &&
        other.telefone == telefone &&
        other.endereco == endereco &&
        other.cep == cep &&
        other.rendaTotal == rendaTotal &&
        other.pesoSuportadoMaquina == pesoSuportadoMaquina &&
        other.quantidadeMaquinas == quantidadeMaquinas &&
        listEquals(other.anuncios, anuncios) &&
        other.quantidadeAnuncios == quantidadeAnuncios;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        cpf.hashCode ^
        nome.hashCode ^
        email.hashCode ^
        dataNascimentoProprietario.hashCode ^
        senha.hashCode ^
        telefone.hashCode ^
        endereco.hashCode ^
        cep.hashCode ^
        rendaTotal.hashCode ^
        pesoSuportadoMaquina.hashCode ^
        quantidadeMaquinas.hashCode ^
        anuncios.hashCode ^
        quantidadeAnuncios.hashCode;
  }
}
