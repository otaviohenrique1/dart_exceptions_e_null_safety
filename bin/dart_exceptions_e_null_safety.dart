import 'models/account.dart';
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

/*
  void main(List<String> args) {
    // double amount = double.parse(
    //     "Not a number"); /* Gera => FormatException: Invalid double */
    // throw FormatException();
    // throw "Dart";
    // print(Account(name: "Ricarth", balance: 200, isAuthenticated: true));
    // throw Account(name: "Ricarth", balance: 200, isAuthenticated: true);
    try {
      testFunc();
    } on Exception catch (e) {
      print(e);
    }
    print("Numca chegará até mim");
  }

  void testFunc() {
    throw "Dart";
    // throw Account(name: "Ricarth", balance: 200, isAuthenticated: true);
  }
*/
