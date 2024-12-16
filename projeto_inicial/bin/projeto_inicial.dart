void main() {

  //Declarando as Variáveis do Projeto
  int idade = 23;
  double altura = 1.70;
  bool geek = true;
  const String nome = 'Carlos Eduardo de Oliveira Bispo';
  final String apelido = 'Gentil';
  bool maiorDeIdade;
  int energia = 100;

  //Verificando se a Persona é maior de Idade
  if(idade >= 18){
    maiorDeIdade = true;
  }else{
    maiorDeIdade = false;
  }

  //Criando um Laço For que conta as atividades Entregues na Faculdade
  /*for(int i=0; i<10; i++){
    print('Entreguei $i atividades na Faculdade.');
  }*/

  //Criando um Laço While que mostra a Energia que eu fico após realizar cada atividade
  /*while(energia > 0){
    energia = energia - 12;
    print('Tarefa Entregue. Fiquei com $energia% de energia.');
  }*/

  //Criando um Laço Do While que mostra a Energia gasta nas atividades
  do{
    energia -= 12;
    print('Tarefa Realizada! Fiquei com $energia% de Energia.');
  }while(energia > 0);

  //Criando uma Lista Dinâmica para armazenar os dados de uma Persona
  List<dynamic> gentil = [idade, altura, geek, nome, apelido, maiorDeIdade];

  //String que utiliza os itens da Lista
  String frase = 'Eu sou o ${gentil[3]}.'
  '\nTodos me chamam de ${gentil[4]}.'
  '\nEu me considero geek? ${gentil[2]}.'
  '\nTenho ${gentil[1]} de altura.'
  '\nTenho ${gentil[0]} anos.'
  '\nEu Sou Maior de Idade? ${gentil[5]}.';

  //List<String> listanomes = ['Pedro', 'João', 'Moacir', 'Withor', 'Stephanie'];
  //TODO: Esta é uma Lista com os nomes dos meu colegas para criar outras personas futuramente

  print(frase);

}
