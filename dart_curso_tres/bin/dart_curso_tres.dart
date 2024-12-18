void main() {

  //escolherMeioTransporte(50);
  escolherMeioTransporteEnum(Transporte.Carro);

}

void escolherMeioTransporte(int locomocao){
  if(locomocao == 0){
    print('Vou de Carro para a Aventura!');
  }else if(locomocao == 1){
    print('Vou de Bike para a Aventura!');
  }else{
    print('Vou a pé mesmo, mas não perco a Aventura!');
  }
}

void escolherMeioTransporteEnum(Transporte locomocao){

  switch (locomocao){
    case Transporte.Carro:
      print('Vou de Carro para a Aventura');
      break;
    case Transporte.Bike:
      print('Vou de Bike para a Aventura!');
      break;
    case Transporte.Andando:
      print('Vou Andando para a Aventura!');
      break;
    case Transporte.Correndo:
      print('Vou Correndo para a Aventura!');
      break;
    case Transporte.Moto:
      print('Vou de Moto para a Aventura!');
      break;
    case Transporte.Aviao:
      print('Vou de Avião para a Aventura!');
      break;
    case Transporte.Lancha:
      print('Vou de Lancha para a Aventura!');
      break;
    //case Transporte.JetSki:
    //  print('Vou de JetSki para a Aventura!');
    //  break;
    default:
      print('Vou a pé mesmo, mas não perco a Aventura!');
      break;
    
  }
}


enum Transporte{
  Carro,
  Bike,
  Andando,
  Correndo,
  Moto,
  Aviao,
  Lancha,
  JetSki,
}