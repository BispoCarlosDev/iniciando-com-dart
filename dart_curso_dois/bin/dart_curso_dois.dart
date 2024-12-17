void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Graviola";
  int diasDesdeColheita = 10;
  bool isMadura = funcEstarMadura(diasDesdeColheita);

  print(isMadura);

  

}


bool funcEstarMadura(int dias){
  if (dias >= 30){
    return true;
  }else {
    return false;
  }
}
