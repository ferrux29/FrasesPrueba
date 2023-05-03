import 'package:flutter/foundation.dart';

class Frase {
  final int id;
  final String frase;
  final String autor;
  final String libro;

  Frase({this.id, this.frase, this.autor, this.libro});

  factory Frase.fromJson(Map<String, dynamic> json) {
    return Frase(
      id: json['id'],
      frase: json['frase'],
      libro: json['livro'],
      autor: json['autor'],
    );
  }
}
