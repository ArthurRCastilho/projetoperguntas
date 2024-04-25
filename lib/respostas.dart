import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  String resposta = '';
  final void Function() quandoSelecionado;

  Respostas(this.resposta, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(
              Color.fromARGB(183, 39, 144, 231)),
        ),
        onPressed: quandoSelecionado,
        child: Text(resposta),
      ),
    );
  }
}
