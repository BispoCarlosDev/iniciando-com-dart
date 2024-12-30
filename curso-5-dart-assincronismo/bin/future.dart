import 'dart:io';
void main(){

  Future myFuture = Future((){
    print('Estamos indo de volta para o Futuro');
    print('Digite o Ano para onde você quer ir!');
    return stdin.readLineSync().toString();
  }).then((onValue) => print('Estamos indo para $onValue'));

  Future<int> myFutureFunc()async{
    print('Eu tenho uma função no Futuro.');
    await Future.delayed(Duration(seconds: 15));
    return 12;
  }

  myFutureFunc().then((value) => print('O valor da minha função é: $value'));

  print('Encerrando Main.');
}