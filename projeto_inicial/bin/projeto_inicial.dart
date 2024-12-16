void main() {

  int idade = 23;
  double altura = 1.70;
  bool geek = true;
  const String nome = 'Carlos Eduardo de Oliveira Bispo';
  final String apelido = 'Gentil';
  bool maiorDeIdade;
  int energia = 100;

  if(idade >= 18){
    maiorDeIdade = true;
  }else{
    maiorDeIdade = false;
  }

  /*for(int i=0; i<10; i++){
    print('Entreguei $i atividades na Faculdade.');
  }*/

  /*while(energia > 0){
    energia = energia - 12;
    print('Tarefa Entregue. Fiquei com $energia% de energia.');
  }*/

  do{
    energia =- 12;
    print('Tarefa Realizada! Fiquei com $energia% de Energia.');
  }while(energia > 0);

  List<dynamic> gentil = [idade, altura, geek, nome, apelido, maiorDeIdade];

  String frase = 'Eu sou o ${gentil[3]}.'
  '\nTodos me chamam de ${gentil[4]}.'
  '\nEu me considero geek? ${gentil[2]}.'
  '\nTenho ${gentil[1]} de altura.'
  '\nTenho ${gentil[0]} anos.'
  '\nEu Sou Maior de Idade? ${gentil[5]}.';

  //List<String> listanomes = ['Pedro', 'João', 'Moacir', 'Withor', 'Stephanie'];

  print(frase);

}
