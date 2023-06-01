import 'pessoa_membros_privados.dart';

main () {
var p1 = Pessoa();
p1.nome = 'Kleber';
p1.cpf = '09231232134';  //No caso do dart, esse atributo é privado só pra fora do arquivo, Quem tentar acessar ele de outro arquivo não conseguirá.

print('O cpf do ${p1.nome} é ${p1.cpf1}');

}

