import 'package:dart_application/dart_application.dart' as dart_application;
import 'package:dart_application/primeiro.dart' as primeiro;
import 'package:dart_application/dados_aluno_aula.dart' as dadosAlunosAula;
import 'packge:dart_application/estruturas_repeticao' as estruturasRepeticao

// ignore: slash_for_doc_comments
/**
 * 
>>>>estrutura de decisão
solicitar o quantitativo de presença e informar se o aluno está reprovado por falta.
solicitar a nota de uma disciplina de um aluno e informar se está acima da média. 
solicite 3 notas e informe: (1) a maior nota, (2) a média e a (3) menor nota.  
solicite uma note e a quantidade de presença de uma aluno. Informe se o aluno está APROVADO, REPROVADO POR CONCEITO, REPROVADO POR FALTA ou REPROVADO POR FALTA e CONCEITO.

solicitar uma nota de um aluno. A nota deverá ser de 0 a 10. 
→ Se o usuário informar errado o programa deverá informar o que deve ser preenchido. 
→ Verificar a nota e informar se o aluno está aprovado ou não. Caso a nota seja menor do que 6, solicitar a nota da recuperação. Para o cálculo da aprovação, considere a média das notas.


>>>>estrutura de repetição 
solicite os dados de 3 alunos. 
enquanto o usuário desejar, solicite os dados de alunos. 
solicite os dados de 2 disciplinas. 
enquanto for necessário, solicite os dados das disciplinas do curso. 
enquanto for necessário, solicite as notas e as faltas das disciplinas do curso de um aluno e informe se o aluno está APROVADO no curso. Lembrando que o aluno pode em cada disciplina, estar APROVADO, REPROVADO POR CONCEITO, REPROVADO POR FALTA ou REPROVADO POR FALTA e CONCEITO. 
 */
void main(List<String> arguments) {
  //print('Hello world: ${dart_application.calculate()}!');
  //primeiro.minhaFuncao();
  // dadosAlunosAula.solicitarDados();
  estruturasRepeticao.tresAlunos();
}
