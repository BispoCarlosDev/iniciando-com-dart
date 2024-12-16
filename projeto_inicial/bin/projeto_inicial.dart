void main() {

  int idade = 23;
  double altura = 1.70;
  bool geek = (idade == altura);
  String nome = 'Carlos';
  String apelido = 'Gentil';

  List<dynamic> gentil = [23, 1.70, true, 'Carlos Bispo', 'Gentil'];

  String frase = 'Eu sou o ${gentil[3]}, \ntodos me chamam de ${gentil[4]}. \nEu me '
  'considero geek? ${gentil[2]}, \ntenho ${gentil[1]} de altura, \ntenho ${gentil[0]} anos.';

  List<String> listanomes = ['Pedro', 'João', 'Moacir', 'Withor', 'Stephanie'];

  print(frase);

}
