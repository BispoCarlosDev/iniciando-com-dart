
import 'dart:async';

void main() async{

  Stream myStream(int interval, [int? maxCount]) async*{

    int i = 1;
    while(i != maxCount){
      print('Contando: $i');
      await Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print('O meu Stream acabou.');
  }

  var carlosStream = myStream(1).asBroadcastStream();
  StreamSubscription mySubscriber = carlosStream.listen((event) {
    if(event.isEven){
      //print('O número é Par!');
    }
  },onError: (e){print('Erro: $e');
  },onDone: (){
    print('O subscriber acabou.');
  });
  
  carlosStream.map((event) => 'Subscriber 2 assistindo: $event').listen(print);

  await Future.delayed(Duration(seconds: 3));
  mySubscriber.pause();
  print('Stream pausada.');
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.resume();
  print('Stream retomada.');
  await Future.delayed(Duration(seconds: 3));
  mySubscriber.cancel();
  print('Stream cancelada.');
  
  print('A Main terminou.');
}