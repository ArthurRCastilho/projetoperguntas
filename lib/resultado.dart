import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  Resultado(this.pontuacao);

  String get fraseResultado {
    if (pontuacao < 13) {
      return 'Saiu bem mal';
    } else if (pontuacao < 20) {
      return 'Ok!';
    } else if (pontuacao < 30) {
      return 'Parabéns';
    } else {
      return 'Impressionante!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      fraseResultado.toString(),
      style: const TextStyle(fontSize: 28),
    ));
  }
}
