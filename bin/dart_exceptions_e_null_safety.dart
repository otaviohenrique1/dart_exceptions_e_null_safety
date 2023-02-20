void main(List<String> arguments) {
  print("Started main");
  functionOne();
  print("Finished main");
}

void functionOne() {
  print("Started F01");
  try {
    functionTwo();
  } on FormatException {
    print("A conversão não pode ser faita.");
  }
  print("Finished F01");
}

void functionTwo() {
  print("Started F02");
  for (var i = 0; i < 5; i++) {
    print(i);
    double amount = double.parse(
        "Not a number"); /* Gera => FormatException: Invalid double */
    // try {
    //   double amount = double.parse(
    //       "Not a number"); /* Gera => FormatException: Invalid double */
    // } on FormatException {
    //   print("A conversão não pode ser faita.");
    // }
  }
  print("Finished F02");
}

/* import 'models/account.dart';
import 'controllers/bank_controller.dart';

void main(List<String> arguments) {
  BankController bankController = BankController();

  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  bool result = bankController.makeTransfer(
      idSender: "Kako", idReceiver: "Ricarth", amount: 700);

  print(result);
}
 */

// void main(List<String> arguments) {
  // double amount = double.parse("25,33");
  /* double amount = double.parse("25,33"); => Gera Exception => FormatException (FormatException: Invalid double
25,33) */
  // recursiveFunc(1);
  /* recursiveFunc(1); => Gera erro => StackOverflow */
// }

// void recursiveFunc(int count) {
//   print(count);
//   recursiveFunc(count + 1);
// }
