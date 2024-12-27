import 'dart:io';

void stackStart() {
  print('Started Main!');
  function01();
  print('Finished Main!');
}

void function01(){
  print('Started F01!');
  try{
    function02(1);
  } catch (exception, stackTrace){
    print(exception);
    print(stackTrace);
    rethrow;
  } finally{
    print('Chegou no Finally.');
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
