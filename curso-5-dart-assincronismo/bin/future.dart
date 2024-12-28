import 'dart:io';
void main(){

  Future myFuture = Future((){
    print('Estamos indo de volta para o Futuro');
    print('Digite o Ano para onde você quer ir!');
    return stdin.readLineSync().toString();
  }).then((onValue) => print('Estamos indo para $onValue'));

  print('Encerrando Main.');
}