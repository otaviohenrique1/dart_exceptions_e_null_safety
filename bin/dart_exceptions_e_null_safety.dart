import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';
import 'controllers/bank_controller.dart';

void main(List<String> arguments) {
  print("asdasd".runtimeType);
  print(null.runtimeType);
  print(1.runtimeType);

  /* runtimeType => Exibe o tipo do objeto */
  // assert(2 < 1, "Levantei o Assert");
  BankController bankController = BankController();

  /* Account accountTest = Account(
    name: "asdasd",
    balance: -200,
    isAuthenticated: true,
  ); */

  bankController.addAccount(
    id: "Ricarth",
    account: Account(
      name: "Ricarth Lima",
      balance: 400,
      isAuthenticated: true,
    ),
  );

  bankController.addAccount(
    id: "Kako",
    account: Account(
      name: "Caio Couto",
      balance: 600,
      isAuthenticated: true,
    ),
  );

  try {
    bool result = bankController.makeTransfer(
      idSender: "Kako",
      idReceiver: "Ricarth",
      amount: 700,
    );
    if (result) {
      print("Transação concluída com sucesso!");
    }
  } on SenderIdInvalidException catch (e) {
    print(e);
    print("O ID '${e.idSender}' do rementente não é um ID valído.");
  } on ReceiverIdInvalidException catch (e) {
    print(e);
    print("O ID '${e.idReceiver}' do destinatario não é um ID valído.");
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
    print("O usuario remetente de ID '${e.idSender}' não está autenticado.");
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
    print(
        "O usuario de ID '${e.idSender}' tentou enviar ${e.amount} sendo que na sua conta tem ${e.senderBalance}.");
  } on Exception {
    print("Algo deu errado.");
  }
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
