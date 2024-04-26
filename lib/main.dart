import 'package:flutter/material.dart';
import 'package:projetoperguntas/resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é sua cor favorita?',
      'respostas': [
        {'texto': 'Vermelho', 'pontuacao': 10},
        {'texto': 'Azul', 'pontuacao': 9},
        {'texto': 'Verde', 'pontuacao': 3},
        {'texto': 'Branco', 'pontuacao': 8},
      ],
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': [
        {'texto': 'Cachorro', 'pontuacao': 10},
        {'texto': 'Gato', 'pontuacao': 6},
        {'texto': 'Tigre', 'pontuacao': 5},
        {'texto': 'Leão', 'pontuacao': 9},
      ]
    },
    {
      'texto': 'Quantas letras tem seu nome?',
      'respostas': [
        {'texto': 'Menos que 5', 'pontuacao': 10},
        {'texto': '6 a 8', 'pontuacao': 8},
        {'texto': '9 a 11', 'pontuacao': 5},
        {'texto': 'Mais que 11', 'pontuacao': 3},
      ],
    },
    {
      'texto': 'Qual sua matéria favorita?',
      'respostas': [
        {'texto': 'Matematica', 'pontuacao': 10},
        {'texto': 'Portugues', 'pontuacao': 5},
        {'texto': 'Historia', 'pontuacao': 2},
        {'texto': 'Fisica', 'pontuacao': 9},
      ],
    },
  ];

  void _responder(int pontuacao) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += pontuacao;
    });
    print(_pontuacaoTotal);
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Responsavel para dar estrutura a aplicação
        appBar: AppBar(
          backgroundColor: Colors.blue,
          // foregroundColor: Color.fromRGBO(177, 9, 23, 0.635), ==> Cor da letra
          // shadowColor: const Color.fromRGBO(0, 255, 123, 0.498), ==> Cor de sombra
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : Resultado(_pontuacaoTotal),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
