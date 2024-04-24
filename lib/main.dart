import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projetoperguntas/respostas.dart';
import './questao.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é sua cor favorita?',
      'Qual seu animal favorito?',
      'Quantas letras tem seu nome?',
      'Qual sua matéria favorita?',
    ];

    return MaterialApp(
      home: Scaffold(
        // Responsavel para dar estrutura a aplicação
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(51, 51, 255, 0.553),
          // foregroundColor: Color.fromRGBO(177, 9, 23, 0.635), Cor da letra
          shadowColor: Color.fromRGBO(13, 150, 132, 0.499),
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]),
            Respostas('Resposta 1'),
            Respostas('Resposta 2'),
            Respostas('Resposta 3'),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
