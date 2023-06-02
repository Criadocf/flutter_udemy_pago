import 'package:flutter/material.dart';

import 'questao.dart';

import 'resposta.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

class _PerguntaAppState extends State<PerguntaApp> {
  //com o underScore na frente do nome da classe PerguntaAppState eu torno a minha classe invisílve pra fora do arquivo.
  //com essa classe eu vou gerenciar
//o estado da classe PerguntaApp

  var _perguntaSelecionada = 0;

  void _respostas() {
    //Fora da classe ninguém poderá chamar ou ver essa função. Pois está privada(_)
    setState(() {
      //Uso o setState pra jogar pra dentro dele aquilo que está sendo modificado, no caso
      // o incremento da variável '_'
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual seu animal favorito?',
      'Qual a sua cor favorita?',
      'Qual o jogo que você mais gosta?'
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: Column(
        children: [
          Questao(perguntas[
              _perguntaSelecionada]), //Aqui eu uso a classe 'Questão' importada, que recebe um parâmetro.
          Resposta('Resposta1', _respostas),
          Resposta('Resposta2', _respostas),
          Resposta('Resposta3', _respostas),
        ],
      ),
    ));
  }
}
