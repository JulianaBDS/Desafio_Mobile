import 'Pessoa.dart';

void main() {
  var p1 = Pessoa();
  var p2 = Pessoa();
  var p3 = Pessoa();

  p1.nome = "Juliana";
  p1.idade = 23;
  p2.nome = "LinkCuzao";
  p2.idade = 34;
  p3.nome = "OutOfBounds";
  p3.idade = 5;

  List<Pessoa> pessoas = List();
  pessoas.add(p1);
  pessoas.add(p2);
  pessoas.add(p3);

  MostraPessoa(pessoas);
}

void MostraPessoa(List<Pessoa> pessoas) {
  var maior = 0, menor = 0, i = 0;

  do {
    if (pessoas[i].idade >= pessoas[maior].idade) {
      maior = i;
    }
    if (pessoas[i].idade <= pessoas[menor].idade) {
      menor = i;
    }
    i++;
  } while (i < pessoas.length);

  print('Mais Velha: ' +
      pessoas[maior].nome +
      ' - ' +
      pessoas[maior].idade.toString() +
      ' ano(s)');
  print('Mais Nova: ' +
      pessoas[menor].nome +
      ' - ' +
      pessoas[menor].idade.toString() +
      ' ano(s)');
}
