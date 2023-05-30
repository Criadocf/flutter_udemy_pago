import 'package:flutter/material.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}

class PerguntaAppState extends State<PerguntaApp> {
  //com essa classe eu vou gerenciar
//o estado da classe PerguntaApp

  var perguntaSelecionada = 0;

  void respostas() {
    setState(() {
      //Uso o setState pra jogar pra dentro dele aquilo que está sendo modificado, no caso
      // o incremento da variável 'perguntaSelecionada'
      perguntaSelecionada++;
      print(perguntaSelecionada);
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = ['Qual seu animal favorito?', 'Qual a sua cor favorita?'];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
      ),
      body: Column(
        children: [
          Text(perguntas[perguntaSelecionada]),
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
            onPressed:
                respostas, //Posso usar função anônima assim também(ARROW FUNCTION)
          )
        ],
      ),
    ));
  }
}
