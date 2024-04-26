import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

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
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.center, // ==> Apenas colocar o texto no centro
      children: [
        Center(
          child: Text(
            fraseResultado.toString(),
            style: const TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: quandoReiniciarQuestionario,
          child: const Text(
            'Reinciar?',
          ),
        )
      ],
    );
  }
}
