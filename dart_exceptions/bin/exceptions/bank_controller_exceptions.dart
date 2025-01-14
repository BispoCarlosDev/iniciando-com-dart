class SenderIdInvalidException implements Exception{
  static  const String report = 'SenderIdInvalidException';
  String idSender;
  SenderIdInvalidException({required this.idSender});

  @override
  String toString(){
    return '$report\nID Sender: $idSender\n';
  }
}
class ReceiverIdInvalidException implements Exception{
  static const String report = 'ReceiverIdInvalidException';
  String idReceiver;
  ReceiverIdInvalidException({required this.idReceiver});

  @override
  String toString(){
    return '$report\nID Receiver: $idReceiver\n';
  }
}
class SenderNotAuthenticatedException implements Exception{
  static const String report = 'SenderNotAuthenticatedException';
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});

  @override
  String toString(){
    return '$report\nID Sender: $idSender\n';
  }
}
class ReceiverNotAuthenticatedException implements Exception{
  static const String report = 'ReceiverNotAuthenticatedException';
  String idReceiver;
  ReceiverNotAuthenticatedException({required this.idReceiver});

  @override
  String toString(){
    return '$report\nID Receiver: $idReceiver\n';
  }
}
class SenderBalanceLowerThanAmountException implements Exception{
  static const report = 'SenderBalanceLowerThanAmountException';
  String idSender;
  double senderBalance;
  double amount;
  SenderBalanceLowerThanAmountException({required this.idSender,
  required this.senderBalance,
  required this.amount});

  @override
  String toString(){
    return '$report\nId Sender: $idSender\nSender Balance: $senderBalance\nAmount: $amount';
  }
}