import 'dart:io';

void main(){
  //Criando uma conversa de apresentação
  print('Ei, qual o seu nome?');
  String nome = stdin.readLineSync().toString();

  //Função que trabalha com o nome inserido pelo usuário
  /*Future<String> conversaFunc(String nome)async{
    await Future.delayed(Duration(seconds: 5));
    if(RegExp(r'^[a-zA-Z\s]+$').hasMatch(nome) && nome != ''){
      return nome;
    }else{
    throw Exception();
    }
  }

  //Chamando a Função e Tratando seus erros
  conversaFunc(nome)
    .then((value) => print('Prazer em conhecer $value, o meu nome é Gentil!'))
    .onError((error, StackTrace) => print('Se não quer falar, passer bem.'))
    .whenComplete(() => print('Sujeito engraçado.'));*/

  //Agora, iremos criar e chamar outra função onde os erros são tratados dentro da Função

  //Criando a Função
  Future<String> conversaFuncComTratamento(String nome)async{
    try{
      await Future.delayed(Duration(seconds: 5));
    if(RegExp(r'^[a-zA-Z\s]+$').hasMatch(nome) && nome != ''){
      print('Prazer em conhecer $nome, o meu nome é Gentil!');
      return nome;
    }else{
      throw Exception();
      return nome;
    }
    }catch(e){
      print('Se não quer falar, passer bem.');
      print('Erro Ocorrido: $e');
      return nome;
    }finally{
      print('Sujeito engraçado.');
    }
  }
  
  conversaFuncComTratamento(nome).then((value) => print('O Valor informado como nome foi $value.'));

}