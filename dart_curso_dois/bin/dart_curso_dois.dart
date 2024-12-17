void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Graviola";
  int diasDesdeColheita = 10;
  bool isMadura = funcEstarMadura(diasDesdeColheita);

  mostrarMadura('Goiaba', 10, cor: 'azul');
}

void mostrarMadura(String nome, int dias, {required String cor}){
  if (dias >= 30){
    print('A $nome está Madura.');
  }
  else{
    print('A $nome não está Madura.');
  }

  //if(cor != null){
    print('A $nome é $cor.');
  //}
}

bool funcEstarMadura(int dias){
  if (dias >= 30){
    return true;
  }else {
    return false;
  }
}
