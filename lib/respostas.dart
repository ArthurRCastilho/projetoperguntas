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
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue)),
        onPressed: quandoSelecionado,
        child: Text(
          resposta,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
