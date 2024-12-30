import 'dart:io';
void main(){

  /*Future myFuture = Future((){
    print('Estamos indo de volta para o Futuro');
    print('Digite o Ano para onde você quer ir!');
    return stdin.readLineSync().toString();
  }).then((onValue) => print('Estamos indo para $onValue'));*/

  Future<int> myFutureFunc()async{
    print('Eu tenho uma função no Futuro.');
    await Future.delayed(Duration(seconds: 5));
    throw Exception();
    return 12;
  }

  /*myFutureFunc()
  .then((value) => print('O valor da minha função é: $value'))
  .onError((error, StackTrace) => print('OMG, aconteceu um erro.'))
  .whenComplete(() => print('O Futuro foi Aniquilado!'));*/

  Future<int> myFutureErrorFunc(int a, int b) async{
    try{
      if(a>b){
      throw Exception();
    }
    print('Iniciando uma Nova Função');
    await Future.delayed(Duration(seconds: 5));
    return 42;
    }catch(e){
      print('Erro Ocorrido: $e');
      return 42;
    }finally{
      print('O Futuro foi Aniquilado, Hasta La Vista Baby!');
    }
    
  }

  myFutureErrorFunc(5, 3).then((value) => print('O Valor é $value.'));

  print('Encerrando Main.');
}