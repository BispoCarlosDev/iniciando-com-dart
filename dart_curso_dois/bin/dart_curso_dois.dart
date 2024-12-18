void main() {
  String nome = 'Laranja';
  double peso = 100.2;
  String cor = "Verde e Amarela";
  String sabor = "Graviola";
  int diasDesdeColheita = 10;
  //bool isMadura = funcEstarMadura(diasDesdeColheita);
/*
  Fruta fruta01 = Fruta(nome, peso, cor, sabor, diasDesdeColheita);
  Fruta fruta02 = Fruta('Uva', 40, 'Roxo', 'Doce', 15);

  fruta01.estarMadura(5);
  fruta02.estarMadura(8);*/

  Legume mandioca = Legume('Mandioca', 1200, 'Marrom', true);
  Fruta banana = Fruta('Banana', 75, 'Amarela', 'Doce', 12);
  Nozes macadamia = Nozes('Macadamia', 2, 'Ocre', 'Doce', 20, 35);
  Citrica limao = Citrica('Limão', 50, 'Verde', 'Azedo', 5, 9);

  /*mandioca.printAlimento();
  mandioca.cozinhar();
  banana.printAlimento();
  banana.fazerSuco();
  macadamia.printAlimento();
  limao.printAlimento();
  limao.fazerSuco();*/
  
  print('\nPara fazer um bolo de Mandioca:');
  mandioca.separarIngredientes();
  mandioca.fazerMassa();
  mandioca.assar();

  print('\nPara fazer um bolo de Banana:');
  banana.separarIngredientes();
  banana.fazerMassa();
  banana.assar();

  print('\nPara fazer um bolo de Macadamia:');
  macadamia.separarIngredientes();
  macadamia.fazerMassa();
  macadamia.assar();

  print('\nPara fazer um bolo de Limão:');
  limao.separarIngredientes();
  limao.fazerMassa();
  limao.assar();

}

class Fruta extends Alimento implements Bolo{
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(
      String nome, double peso, String cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura})
      : super(nome, peso, cor);

  void estarMadura(int diasParaMadura) {
    isMadura = diasDesdeColheita >= diasParaMadura;
    print('A sua $nome foi colhida a $diasDesdeColheita dias e precisa de '
        '$diasParaMadura para madurar. Ela está Madura? $isMadura.');
  }

  void fazerSuco() {
    print('Você fez um excelente suco de $nome');
  }

  @override
  void assar() {
    print('Colocar o Bolo de $nome no forno.');
  }
  @override
  void fazerMassa() {
    print('Mistura o/a $nome com os ingredientes.');
  }
  @override
  void separarIngredientes() {
    print('Catar o/a $nome.');
  }

}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento() {
    print('Este(a) $nome pesa $peso gramas e é $cor.');
  }
}

class Legume extends Alimento implements Bolo {
  bool isPrecisaCozinhar;

  Legume(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto, o $nome está cozinhando.');
    } else {
      print('Nem precisa cozinhar');
    }
  }

  @override
  void assar() {
    print('Colocar o Bolo de $nome no forno.');
  }
  @override
  void fazerMassa() {
    print('Mistura o/a $nome com os ingredientes.');
  }
  @override
  void separarIngredientes() {
    print('Catar o/a $nome.');
  }

}

class Citrica extends Fruta {
  double nivelAzedo;

  Citrica(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe Refrigerante de $nome');
    } else {
      print('Não Existe Refri de $nome.');
    }
  }

  @override
  void fazerMassa() {
    print('Expremer o/a $nome.');
    super.fazerMassa();
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  @override
  void fazerMassa(){
    print('Quebrar a Casca.');
    super.fazerMassa();
  }
}

abstract class Bolo{
  void separarIngredientes();
  void fazerMassa();
  void assar();
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