class Account {
  String name;
  double balance;
  bool isAuthenticated;

  Account(
      {required this.name,
      required this.balance,
      required this.isAuthenticated}):
  assert(name.isNotEmpty, 'O nome tem que ser preenchido.'),
  assert(balance > 0, 'O valor não pode ser negativo.');

  editBalance({required value}) {
    balance = balance + value;
  }
}
