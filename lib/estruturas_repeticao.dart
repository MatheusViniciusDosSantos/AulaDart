import 'dart:io';

void tresAlunos() {
  List<Aluno> alunos = [];
  for (var i = 0; i < 3; i++) {
    Aluno aluno = Aluno();
    print("Digite o nome do aluno $i");
    aluno.nome = stdin.readLineSync()!;
    print("Digite a idade do aluno $i");
    aluno.idade = int.parse(stdin.readLineSync()!);
    print("Digite a data de nascimento do aluno $i");
    aluno.aniversario = stdin.readLineSync()!;
    alunos.add(aluno);
    aluno = new Aluno();
  }
}

class Aluno {
  late String nome;
  late int idade;
  late String aniversario;
}
