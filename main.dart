import 'package:flutter/material.dart';

void main(){
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  
  void respostas(){
    print('PERGUNTA RESPONDIDA');
  }

  @override
  Widget build(BuildContext context) {

    final perguntas = [
    'Qual seu animal favorito?',
    'Qual a sua cor favorita?'

  ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
           Text(perguntas[0]),
           ElevatedButton(
            child: Text('Resposta1'),
            onPressed: respostas,
           ),
           ElevatedButton(
            child: Text('Resposta2'),
            onPressed: respostas,
           ),
           ElevatedButton(
            child: Text('Resposta3'),
            onPressed: respostas,
           )
          ],
        ),
      )
    );
  }
}