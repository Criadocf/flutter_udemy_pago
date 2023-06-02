import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: ElevatedButton(
        style: OutlinedButton.styleFrom(
            backgroundColor: Colors.black), //Aqui mudo a cor de fundo do botão.
        child: Text(
          texto,
          style: TextStyle(
              color: Colors
                  .white), //Aqui mudo a cor do texto que está dentro do botão,
        ),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
