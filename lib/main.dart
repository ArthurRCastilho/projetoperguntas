import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Pergunta respondida');
  }

  void Function() FuncaoQueRetornaOutraFuncao() {
    return () {
      print('Pergunta Respondida #02');
    };
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = ['Qual é sua cor favorita?', 'Qual seu animal favorito?'];

    return MaterialApp(
      home: Scaffold(
        // Responsavel para dar estrutura a aplicação
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: responder,
              child: const Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: FuncaoQueRetornaOutraFuncao(),
              child: const Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: () => print('Pergunta Respondida #03'),
              child: const Text('Resposta 3'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Pergunta Respondida #04');
              },
              child: const Text('Resposta 4'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Botão nulo'),
            ),
          ],
        ),
      ),
    );
  }
}
