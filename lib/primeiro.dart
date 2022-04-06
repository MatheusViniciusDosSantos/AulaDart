import 'dart:io';

void minhaFuncao() {
  //Tipo nome = atribuição;

  //Definido variaveis nomeados - tipos explicitos
  String nomeProduto = "Chocolate";
  double precoProduto = 2.2;
  int quantidadeProduto = 3;

  //Definido uma variável que pode ser nula
  //por padrão, as variáveis não podem ser nulas
  String? descricao;

  //Convertendo String para double
  String entradaPreco = "3.5";
  double preco = double.parse(entradaPreco);

  //Convertendo String para int
  String quantidade = "7";
  int quantidadeInt = int.parse(quantidade);

  //Definindo variáveis de inferência
  var nomeProdutos2 = "Chocolate"; //Definindo uma variável String
  var quantidade2 = 23;
  var preco2 = 34.5;

  //Difinido uma variável dinâmica
  dynamic valor = 3;
  valor = "Paulo";
  valor = 45.8;

  print("infome o seu nome");
  var nome = stdin.readLineSync();

  print('''O meu nome é $nome ''');
}
