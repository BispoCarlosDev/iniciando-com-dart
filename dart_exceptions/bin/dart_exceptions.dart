void main() {
  print('Started Main!');
  function01();
  print('Finished Main!');
}

void function01(){
  print('Started F01!');
  function02(1);
  print('Finished F01!');
}

void function02(int number){
  print('Started F02!');
  for (int i = number; i <= 5; i++){
    print(i);
  }
  print('Finished F02!');
}
