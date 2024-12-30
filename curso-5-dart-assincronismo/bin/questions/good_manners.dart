
class GoodManners {
  String question;
  bool isThisGoodManners = false;
  String carlosBot = 'CarlosBot:\n';
  GoodManners(this.question);

  bool isThisManners(){
    if(question.contains('Oi') ||
    question.contains('oi') ||
    question.contains('Olá') ||
    question.contains('olá') ||
    question.contains('Bom Dia') ||
    question.contains('bom dia') ||
    question.contains('Boa Tarde') ||
    question.contains('boa tarde') ||
    question.contains('Boa Noite') ||
    question.contains('boa noite') ||
    question.contains('Obrigado') ||
    question.contains('obrigado') || 
    question.contains('Obrigada') ||
    question.contains('obrigada')){
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }

  goodManners(){
    if(question.contains('Bom dia') ||
    question.contains('bom dia')){
      print(carlosBot+': Bom dia Flor do Dia!!!');
    }else if(question.contains('Boa Tarde') ||
    question.contains('boa tarde')){
      print(carlosBot+': Boa tarde meu amigo(a)!!!');
    }else if(question.contains('Boa Noite') ||
    question.contains('boa noite')){
      print(carlosBot+': Está tarde, volta amnhã! Brincadeira, Boa noitee!!!');
    }else if(question.contains('Oi') ||
    question.contains('oi')){
      print(carlosBot+': Oi! Como vai? Tudo bem Com você?');
    }else if(question.contains('Olá') ||
    question.contains('olá')){
      print(carlosBot+': Olá! Como vai? Tudo bem Com você?');
    }else if(question.contains('Obrigado') ||
    question.contains('obrigado') ||
    question.contains('Obrigada') ||
    question.contains('obrigada')){
      print(carlosBot+': Por nada, precisando estou a disposição!');
    }
  }
}