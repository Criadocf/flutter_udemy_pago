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
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual seu animal favorito?',
        'resposta': ['Cachorro', 'Cobra', 'Gato', 'Elefante']
      },

      {
        'texto': 'Qual a sua cor favorita?',
        'resposta': ['Verde', 'Preto', 'Cinza', 'Branco']
      },

      {
        'texto': 'Qual o seu instrutor favorito?',
        'resposta': ['Kleber', 'Serena', 'Júnior', 'Aguida']
      },
      
    ];

    List <Widget> respostas = [];

    for (String textResp in perguntas[_perguntaSelecionada].cast()['resposta']) { //Uso o .cast() para transformar um Objeto em uma Lista.
      respostas.add(Resposta(textResp, _respostas));
    }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: Column(
        children: [
          Questao(perguntas[_perguntaSelecionada]['texto'].toString()), //Aqui eu uso a classe 'Questão' importada, que recebe um parâmetro.
          //Uso o .toString() para transformar os elementos em Texto.
          ...respostas, // esses '...' significa que vou pegar todos os elementos da lista 'respostas' e jogar ai dentro dessa lista que ta no Column.
        ],
      ),
    ));
  }
}