import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(169, 17, 154, 0.2),
      width: double.infinity,
      margin: EdgeInsets.all(10), // Margem 
      child: Text(
        texto,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
  }
}
