import 'Aluno.dart';
import 'dart:io';

void main(List<String> args) {
  print('Digite o tamanho da lista de alunos');
  var tam = int.parse(stdin.readLineSync());
  List<Aluno> alunos = List(tam);
  int i = 0;

  while (alunos.length < tam) {
    Aluno aluno = Aluno();
    print('Digite o nome do aluno:');
    var nome = stdin.readLineSync();
    print('Digite a nota do aluno: ');
    var nota = double.parse(stdin.readLineSync());
    aluno.nome = nome;
    aluno.nota = nota;
    alunos[i] = aluno;
    i++;
  }

  for (var aluno in alunos) {
    print(aluno.nome + ' - ' + aluno.nota.toString());
  }
}
