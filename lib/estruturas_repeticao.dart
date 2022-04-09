void tresAlunos() {
    List<Aluno> alunos = List();
    for (var i = 0; i < 3; i++) {
        Aluno aluno = Aluno();
        print("Digite o nome do aluno $i");
        aluno.nome = stdin.readLineSync();
        print("Digite a idade do aluno $i");
        aluno.idade = stdin.readLineSync();
        print("Digite a data de nascimento do aluno $i");
        aluno.aniversario = stdin.readLineSync();
        alunos.add(aluno);
        aluno = null;
    }
    print(alunos);
}

class Aluno {
    String nome;
    int idade;
    String aniversario;
}