import 'transporte.dart';

class Viagem{
  static String codigoTrabalho = 'JKJKJKL';
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  //Para criar um Map
  Map<String,double> registrarPrecos = {};

  int _totalLocaisVisitados = 25000;

  Viagem({required this.locomocao});

  printCodigo(){
    print(codigoTrabalho);
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

  void visitar(String localVisita){
    registrosVisitados.add(localVisita);
    _totalLocaisVisitados += 1;
  }

  void registrarPrecoVisita(String local, dynamic preco){
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados{
    return _totalLocaisVisitados;
  }

  void set alterarLocaisVisitados(int novaQnt){
    if (novaQnt < 10){
    _totalLocaisVisitados = novaQnt;
    }else{
      print('Mentiroso');
    }
  }

}