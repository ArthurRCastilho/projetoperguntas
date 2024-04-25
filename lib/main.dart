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
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é sua cor favorita?',
        'respostas': ['Vermelho', 'Azul', 'Verde', 'Branco']
      },
      {
        'texto': 'Qual seu animal favorito?',
        'respostas': ['Cachorro', 'Gato', 'Tigre', 'Leão']
      },
      {
        'texto': 'Quantas letras tem seu nome?',
        'respostas': ['Menos que 5', '6 a 8', '9 a 11', 'Mais que 11']
      },
      {
        'texto': 'Qual sua matéria favorita?',
        'respostas': ['Matematica', 'Portugues', 'Historia', 'Fisica']
      },
    ];

    List<Widget> respostas = [];
    for (String textResp
        in perguntas[_perguntaSelecionada]['respostas'] as List) {
      respostas.add(Respostas(textResp, _responder));
    }

    return MaterialApp(
      home: Scaffold(
        // Responsavel para dar estrutura a aplicação
        appBar: AppBar(
          backgroundColor:const Color.fromRGBO(28, 9, 237, 0.605),
          // foregroundColor: Color.fromRGBO(177, 9, 23, 0.635), Cor da letra
          shadowColor:const Color.fromRGBO(0, 255, 123, 0.498),
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas,
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
