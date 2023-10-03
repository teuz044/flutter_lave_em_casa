// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class UsuarioModel {
  final String nome;
  final String email;

  UsuarioModel({
    required this.nome,
    required this.email,
  });

  UsuarioModel copyWith({
    String? nome,
    String? email,
  }) {
    return UsuarioModel(
      nome: nome ?? this.nome,
      email: email ?? this.email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'email': email,
    };
  }

  factory UsuarioModel.fromMap(Map<String, dynamic> map) {
    return UsuarioModel(
      nome: map['nome'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UsuarioModel.fromJson(String source) => UsuarioModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UsuarioModel(nome: $nome, email: $email)';

  @override
  bool operator ==(covariant UsuarioModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.nome == nome &&
      other.email == email;
  }

  @override
  int get hashCode => nome.hashCode ^ email.hashCode;
}

class UsuarioProvider with ChangeNotifier {
  UsuarioModel? _usuario;

  UsuarioModel? get usuario => _usuario;

  void setUsuario(UsuarioModel usuario) {
    _usuario = usuario;
    notifyListeners();
  }
}