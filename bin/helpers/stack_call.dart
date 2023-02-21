// import 'dart:io';

void stackStart() {
  print("Started main");
  functionOne();
  print("Finished main");
}

void functionOne() {
  print("Started F01");
  try {
    functionTwo();
  } /* on FormatException */ catch (exception, stackTrace) {
    print("A conversão não pode ser faita.");
    print("-----------------------------");
    // print(exception.toString());
    // print(exception.runtimeType);
    print(exception);
    print("-----------------------------");
    print(stackTrace.toString());
    /* stackTrace => pilha de informacoes de erros */
    // rethrow;
    /* rethrow => Lança a exceção para o próximo quadro da Pilha de Execução, mesmo que a exceção seja tratada com o try */
  } finally {
    print("Chegou no finally");
  }

  /* 
    try {
      functionTwo();
    } catch (exception, stackTrace) {
      print("A conversão não pode ser faita.");
      // print(exception.toString());
      // print(exception.runtimeType);
      print(exception);
      print("-----------------------------");
      print(stackTrace.toString());
      /* stackTrace => pilha de informacoes de erros */
    } finally {
      print("Chegou no finally");
    }
  */

  /* 
    try {
      functionTwo();
    } on FormatException catch (e) {
      print("A conversão não pode ser faita.");
      print(e.message);
      print(e.source);
      print(e.toString());
    } on HttpException catch (e) {
      print("Uma HttpException foi encontrada.");
      print(e.toString());
    } on IOException catch (e) {
      print("Uma IOException foi encontrada.");
      print(e.toString());
    } on Exception catch (e) {
      print("Uma Exception foi encontrada.");
      print(e.toString());
    }
  */
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
