void main() {

  int idade = 23;
  double altura = 1.75;
  bool geek = true;
  const String nome = 'Carlos Eduardo de Oliveira Bispo';
  final String apelido = 'Gentil';

  List<dynamic> gentil = [idade, altura, geek, nome, apelido];

  String frase = 'Eu sou o ${gentil[3]}, \ntodos me chamam de ${gentil[4]}. \nEu me '
  'considero geek? ${gentil[2]}, \ntenho ${gentil[1]} de altura, \ntenho ${gentil[0]} anos.';

  List<String> listanomes = ['Pedro', 'João', 'Moacir', 'Withor', 'Stephanie'];

  print(frase);

}
