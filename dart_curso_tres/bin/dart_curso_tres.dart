void main() {

  //escolherMeioTransporte(50);
  escolherMeioTransporteEnum(Transporte.Bike);

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
  if(locomocao == Transporte.Carro){
    print('Vou de Carro para a Aventura!');
  }else if(locomocao == Transporte.Lancha){
    print('Vou de Lancha para a Aventura!');
  }else{
    print('Vou a pé mesmo, mas não perco a Aventura!');
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