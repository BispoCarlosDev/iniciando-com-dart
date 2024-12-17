void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Graviola";
  int diasDesdeColheita = 10;
  //bool isMadura = funcEstarMadura(diasDesdeColheita);

  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);
  Fruta fruta02 = Fruta('Uva', 40, 'Roxo', 'Doce', 15);

  fruta01.estarMadura(5);
  fruta02.estarMadura(8);

}

class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita, {this.isMadura});

  void estarMadura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura;
    print('A sua $nome foi colhida a $diasDesdeColheita dias e precisa de '
    '$diasParaMadura para madurar. Ela está Madura? $isMadura.');
  }

}

class Alimento{
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);
}

class Legume{
  String nome;
  double peso;
  String cor;
  bool isPrecisaCozinhar;

  Legume(this.nome, this.peso, this.cor, this.isPrecisaCozinhar);
}

class Citrica{
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;
  double nivelAzedo;

  Citrica(this.nome, this.peso, this.cor, this.diasDesdeColheita, this.nivelAzedo);
}

class Nozes{
  String nome;
  double peso;
  String cor;
  int diasDesdeColheita;
  bool? isMadura;
  double porcentagemOleoNatural;

  Nozes(this.nome, this.peso, this.cor, this.diasDesdeColheita, this.porcentagemOleoNatural);
}


/*
int funcQuantosDiasMadura(int dias){
  int diasparaMadura = 30;
  int quantosDiasFaltam = diasparaMadura - dias;
  return quantosDiasFaltam;
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
*/