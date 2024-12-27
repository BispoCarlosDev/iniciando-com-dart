import 'dart:io';

void main() {
  print('Started Main!');
  function01();
  print('Finished Main!');
}

void function01(){
  print('Started F01!');
  /*try{
    function02(1);
    } on FormatException{
      print('Deu bug nessa function.');
    }*/
  try{
    function02(1);
    } on FormatException catch (e){
      print('Deu bug nessa function.');
      print(e.message);
      print(e.source);
      print(e.toString());
    } on HttpException catch (e){
      print('Uma HttpException foi encontrada.');
      e.toString();
    } on IOException catch (e){
      print('Uma IOException foi encontrada.');
      e.toString();
    } on Exception catch (e){
      print('Foi Detectada uma Excessão.');
      print(e.toString());
    }
  print('Finished F01!');
}

void function02(int number){
  print('Started F02!');
  for (int i = number; i <= 5; i++){
    print(i);
    double amount = double.parse('Not a Number');
  }
  print('Finished F02!');
}
