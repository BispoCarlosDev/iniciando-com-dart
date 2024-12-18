void main() {
  escolherMeioTransporte(Transporte.Carro);

  Set<String> registrosVisitados = <String>{};

  registrosVisitados = registrarDestinos('São Paulo', registrosVisitados);
  registrosVisitados = registrarDestinos('Recife', registrosVisitados);
  registrosVisitados = registrarDestinos('Taubaté', registrosVisitados);
  registrosVisitados = registrarDestinos('São Paulo', registrosVisitados);
  print(registrosVisitados);
}

Set<String> registrarDestinos(String destino, Set<String> banco){
  banco.add(destino);
  return banco;
}

void escolherMeioTransporte(Transporte locomocao){

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
  JetSki
}