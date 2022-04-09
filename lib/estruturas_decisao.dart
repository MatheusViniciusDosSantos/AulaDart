import 'dart:io';

void inicializarDecisoes() {
  print("Escolha qual ação será realizada");
  print('''1 - Verificar aprovação por faltas.
  2 - Verificar se a nota do aluno está acima da média.
  3 - Verifacar; entre três notas; a maior, a menor e intermediária.''');
}

void aprovacaoPorFaltas() {
  print("Digite a quantidade de presenca em horas: ");
  var entradaPresenca = stdin.readLineSync()!;
  int presenca = int.parse(entradaPresenca);
  if (presenca < 60.0) {
    print("Você está reprovado por falta.");
  } else {
    print("Você tem presença suficiente para passar de ano.");
  }
}

void notaAcimaDaMedia() {
  print("Digite a nota: ");
  var entradaNota = stdin.readLineSync()!;
  double nota = double.parse(entradaNota);
  if (nota >= 6.0) {
    print("O aluno está acima da média.");
  } else {
    print("O aluno está abaixo da média.");
  }
}

void verificarQualidadeNotas() {
  print("Digite a primeira nota: ");
  var nota1String = stdin.readLineSync()!;
  double nota1 = double.parse(nota1String);
  print("Digite a segunda nota: ");
  var nota2String = stdin.readLineSync()!;
  double nota2 = double.parse(nota2String);
  print("Digite a terceira nota: ");
  var nota3String = stdin.readLineSync()!;
  double nota3 = double.parse(nota3String);
  double notaMaior = 0.0;
  double notaMedia = 0.0;
  double notaMenor = 0.0;
  if (nota1 > nota2 && nota1 > nota3) {
    notaMaior = nota1;
    if (nota2 > nota3) {
      notaMedia = nota2;
      notaMenor = nota3;
    } else if (nota2 < nota3) {
      notaMedia = nota3;
      notaMenor = nota2;
    } else {
      notaMedia = nota2;
    }
  } else if (nota2 > nota1 && nota2 > nota3) {
    if (nota1 > nota3) {
      notaMedia = nota1;
      notaMenor = nota3;
    } else if (nota1 < nota3) {
      notaMedia = nota3;
      notaMenor = nota1;
    } else {
      notaMedia = nota1;
    }
  } else if (nota3 > nota1 && nota3 > nota2) {
    if (nota1 > nota2) {
      notaMedia = nota1;
      notaMenor = nota2;
    } else if (nota1 < nota2) {
      notaMedia = nota2;
      notaMenor = nota1;
    } else {
      notaMedia = nota1;
    }
  } else {
    notaMedia = nota1;
  }
  print(
      "A maior nota é $notaMaior, a menor nota é $notaMenor e a nota intermediária é $notaMedia.");
}

void verificarAprovacao() {
  print("Digite sua nota: ");
  var notaString = stdin.readLineSync()!;
  double nota = double.parse(notaString);
  print("Digite sua quantidade de presença: ");
  var presencaString = stdin.readLineSync()!;
  int presenca = int.parse(presencaString);
  if (nota >= 6.0 && presenca >= 60) {
    print("Aprovado");
  } else if (nota >= 6 && presenca < 60) {
    print("Reprovado por falta.");
  } else if (nota < 6 && presenca >= 60) {
    print("Reprovado por conceito.");
  } else if (nota < 6.0 && presenca < 60) {
    print("Reprovado por falta e conceito.");
  } else {
    print("Algo inesperado aconteceu, finalizando programa.");
  }
}

void notasCorretas() {
  print("Digite sua nota: ");
  var notaString = stdin.readLineSync();
  try {
    double nota = double.parse(notaString!);
    if (nota < 6) {
      print("Digite a nota da recuperação: ");
      var recuperacaoString = stdin.readLineSync();
      var recuperacao = double.parse(recuperacaoString!);
      if ((nota + recuperacao) / 2 < 6) {
        print("Reprovado.");
      } else {
        print("Aprovado.");
      }
    } else {
      print("Aprovado");
    }
  } catch (e) {
    print("Digite a nota corretamente. \r\nExemplo: 7");
  }
}
