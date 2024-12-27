import 'dart:io';
import 'controllers/bank_controller.dart';
import 'models/account.dart';
import './exceptions/bank_controller_exceptions.dart';

void main() {
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
      idSender: "Kako", idReceiver: "Ricarth", amount: 595);
      
  // Observando resultado
  if (result){
    print('Pix Chegou Negada!');
  }

  } on SenderIdInvalidException catch (e){
    print('O ID ${e.idSender} não é um ID válido.');
  } on ReceiverIdInvalidException catch (e){
    print('O ID ${e.idReceiver} não é um ID válido.');
  } on SenderNotAuthenticatedException catch (e){
    print('O usuário remetente de ID ${e.idSender} não está autenticado.');
  } on SenderBalanceLowerThanAmountException catch (e){
    print('O usuário de ID ${e.idSender} tentou enviar ${e.amount} mas só tinha ${e.senderBalance} na conta.');
  } on Exception {
    print('Algo deu Errado, revise seus dados e tente Novamente.');
  }

}