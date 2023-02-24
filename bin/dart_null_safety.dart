import 'dart:math';
import 'models/account.dart';

void testingNullSafety() {
  Account? myAccount;
  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  // print(randomNumber);
  if (randomNumber <= 5) {
    myAccount = Account(
      name: "Ricarth",
      balance: 200,
      isAuthenticated: true,
    );
  }
  print(myAccount.runtimeType);
  // print(myAccount.balance);

  // Conversão direta: Má prática
  // print(myAccount!.balance);

  // Teste com if-else
  if (myAccount != null) {
    print(myAccount.balance);
  } else {
    print("Conta nula");
  }

  // Operador ternario
  print((myAccount != null) ? myAccount.balance : "Conta nula");

  // Chamada segura
  print(myAccount?.balance);
}

void dartNullSafety() {
  testingNullSafety();
  // print("asdasd".runtimeType);
  // print(null.runtimeType);
  // print(1.runtimeType);
  /* runtimeType => Exibe o tipo do objeto */
  // String naoPodeSerNula = "MyString";
  // print(naoPodeSerNula.runtimeType);
  // naoPodeSerNula = null;
  // String? podeSerNula = "MyString";
  // print(podeSerNula.runtimeType);
  // podeSerNula = null;
  // print(podeSerNula.runtimeType);
}

/*
  // Teste forçado e não funciona
  void main(List<String> arguments) {
    isEmpty(null);
  }

  bool isEmpty(String string) => string.length == 0;
*/
