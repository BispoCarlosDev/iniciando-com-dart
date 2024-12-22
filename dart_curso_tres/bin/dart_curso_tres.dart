import 'transporte.dart';
import 'viagem.dart';

void main() {
  Viagem viagemMaio = Viagem(locomocao: Transporte.Andando);
  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.visitar('Museu');
  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.alterarLocaisVisitados = 100;
  print(viagemMaio.consultarTotalLocaisVisitados);

}



