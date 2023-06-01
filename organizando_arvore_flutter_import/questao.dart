import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  
  final String texto; //Uso o final pois aqui eu herdo de um Stateless(Widget imutável)

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //Essa largura 'double.infinity significa LARGURA MÁXIMA, dessa forma até que enfim consegui centralizar o Texto.
      margin: EdgeInsets.all(50), //Aqui significa que todas as margens terao 10px de margem.
      child: Text(
        texto,
        style: TextStyle(fontSize: 28), //style recebe um TextStyle que recebe parâmetro fontSize em que mudo o tamanho do texto.
        textAlign: TextAlign.center, //textAlign recebe um TextAlign.center que alinha o texto no centro. //Nesse caso ele nao ira centralizar até que eu envolva o texto
        //com um container.
      ),
    );
  }
}