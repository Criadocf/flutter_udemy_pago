

class Pessoa {
  String ?nome;
  String ?_cpf;

  set cpf(String cpf) { //Uso pra settar --> MUDAR VALOR.
    this._cpf = cpf;
  }

  get cpf1 { //Uso pra mostrar VALOR. / Nesse caso aqui por algum motivo, tive q mudar o nome do atributo, por isso acrescentei o 1 na frente do atributo cpf.
    return _cpf;
  }

}