//import 'dart:io';
import 'controllers/bank_controller.dart';
import 'models/account.dart';
import './exceptions/bank_controller_exceptions.dart';
import 'dart:math';

void testingNullSafety(){
  Account? myAccount = Account(name: 'Carlos', balance: 600, isAuthenticated: true);

  //Simulando uma comunicação externa
  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  if(randomNumber <= 5){
    myAccount.createdAt = DateTime.now();
  }
  print(myAccount.runtimeType);

  //Esta forma dá erro pois não podemos selecionar o balance de um objeto que pode ser nulo
  //print(myAccount.balance);
  print(myAccount.createdAt);
  //print(myAccount.createdAt.day);

  //Conversão direta: Má prática, pode gerar erro em tempo de execução
  //print(myAccount!.balance);
  //print(myAccount.createdAt!.day);

  //Com if/else eu posso verificar se a conta é nula e tratar desta forma
  if(myAccount != null){
    print(myAccount.balance);
    if(myAccount.createdAt != null){
      print(myAccount.createdAt!.day);
    }
  }else{
    print('Conta não localizada!');
  }

  //Utilizando operador ternário
  print(myAccount != null ? myAccount.balance : 'Conta não localizada!');

  //Usando SafeCol
  print(myAccount?.balance);

}

void main() {
  testingNullSafety();
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try{
    bool result = bankController.makeTransfer(
      idSender: "Kako", idReceiver: "Ricarth", amount: 500);
      
  // Observando resultado
  if (result){
    //print('Pix Chegou Negada!');
  }

  } on SenderIdInvalidException catch (e){
    print(e);
    print('O ID ${e.idSender} não é um ID válido.');
  } on ReceiverIdInvalidException catch (e){
    print(e);
    print('O ID ${e.idReceiver} não é um ID válido.');
  } on SenderNotAuthenticatedException catch (e){
    print(e);
    print('O usuário remetente de ID ${e.idSender} não está autenticado.');
  } on SenderBalanceLowerThanAmountException catch (e){
    print(e);
    print('O usuário de ID ${e.idSender} tentou enviar ${e.amount} mas só tinha ${e.senderBalance} na conta.');
  } on ReceiverNotAuthenticatedException catch (e){
    print(e);
    print('O usuário ${e.idReceiver} não está autenticado!');
  } on Exception {
    print('Algo deu Errado, revise seus dados e tente Novamente.');
  }

}