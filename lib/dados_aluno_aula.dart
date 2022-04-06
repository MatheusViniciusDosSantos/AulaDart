import 'dart:io';

void solicitarDados() {
  print("Digite o nome do aluno: ");
  var nome = stdin.readLineSync();
  print("Digite o ra do aluno: ");
  var raString = stdin.readLineSync()!;
  int ra = int.parse(raString);

  print("Digite o ano de nascimento do aluno: ");
  var anoNascimentoString = stdin.readLineSync()!;
  int anoNascimento = int.parse(anoNascimentoString);
  print("Digite a série do aluno: ");
  var serieAlunoString = stdin.readLineSync()!;
  int serieAluno = int.parse(serieAlunoString);

  print("A idade do aluno $nome é: ${determinarIdade(anoNascimento)}");

  print("Digite o nome da disciplina: ");
  var disciplina = stdin.readLineSync();
  print("Digite o id da disciplina; ");
  var idDisciplinaString = stdin.readLineSync()!;
  int idDisciplina = int.parse(idDisciplinaString);

  print("Digite o CH da disciplina: ");

  //carga horária
  var chString = stdin.readLineSync()!;
  int ch = int.parse(chString);
  print("Digite a série da disciplina: ");
  var serieDisciplinaString = stdin.readLineSync()!;
  int serieDisciplina = int.parse(serieDisciplinaString);

  print("A carga horária mínima da disciplina $disciplina é ${determinarPresencaMinima(ch)}");
}

int determinarIdade(int anoNascimento) {
  return 2022 - anoNascimento;
}

double determinarPresencaMinima(int ch){
  return ch * 0.75;
}