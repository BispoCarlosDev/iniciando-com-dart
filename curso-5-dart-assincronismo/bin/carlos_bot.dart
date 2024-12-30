
import 'dart:async';
import 'dart:io';
import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';
import 'questions/good_manners.dart';

void main() async {
  String carlosBot = 'CarlosBOT:\n';
  var a = true;
  String usuario = '';


  print('-- Iniciando o CarlosBOT, aguarde..--');
  await BotClock().clock(2);

  var myStream = BotClock().carlosBotStream(1,30);
  var subscriber = myStream.listen((event) {
    print('    CarlosBot está ativo a $event segundos');
  }, onDone: (){
    print('CarlosBot será finalizado, faça sua última pergunta.');
    a = false;
  });

  print('Olá, qual o seu nome?');
  //String nomeusuario = descNomeFunc();
  Future pessoa = descobrirNomeFunc().then((value) => print('\nCarlosBOT: Olá $value :)'));
  await Future.delayed(Duration(seconds: 5));
  print('\nComo posso ajudar?');
  //print('CarlosBOT:\n Olá $nomeusuario :) \n Como posso ajudar?');
  do {
    usuario = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    await BotClock().clock(2);
    if (usuario.contains('xau') ||
        usuario.contains('Xau') ||
        usuario.contains('Adeus') ||
        usuario.contains('adeus')) {
      a = false;
      print(carlosBot + ' Até a proxima!!');
    } else if (TimeQuestions(usuario).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      await BotClock().clock(3);
      TimeQuestions(usuario).timeQuestion();
    } else if (GoodManners(usuario).isThisManners()) {
      GoodManners(usuario).goodManners();
    } else if (false) {
      //Basta adicionar novas perguntas aqui!
    } else {
      await BotClock().clock(3);
      print(carlosBot +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(carlosBot + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (a);

  print('--Encerrando CarlosBOT--');

}

String descNomeFunc(){
  String nome = stdin.readLineSync().toString();
  return nome;
}

Future<String> descobrirNomeFunc()async{
  String nome = stdin.readLineSync().toString();
  await Future.delayed(Duration(seconds: 5));
  return nome;
}
