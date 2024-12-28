
void main(){

  Future myFuture = Future((){
    print('Estamos indo de volta para o Futuro');
    return 21;
  }).then((onValue) => print('O Valor é $onValue'));

  print('Encerrando Main.');
}