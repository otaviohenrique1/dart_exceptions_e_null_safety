void main(List<String> arguments) {
  // print("asdasd".runtimeType);
  // print(null.runtimeType);
  // print(1.runtimeType);
  /* runtimeType => Exibe o tipo do objeto */
  String naoPodeSerNula = "MyString";
  print(naoPodeSerNula.runtimeType);
  // naoPodeSerNula = null;
  String? podeSerNula = "MyString";
  print(podeSerNula.runtimeType);
  podeSerNula = null;
  print(podeSerNula.runtimeType);
}


/*
void main(List<String> arguments) {
  isEmpty(null);
}

bool isEmpty(String string) => string.length == 0;
*/
