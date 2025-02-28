import "dart:io";
List<String> operations = ["deposito", "retirada", "transferencia", "pagamento"];
int userWallet = 0;
String? getOperation() {
  print("Digite uma operação (deposito, retirada, transferencia, pagamento):");
  String? operation = stdin.readLineSync();
  if (!operations.contains(operation)) {
    print("Operação inválida. Tente novamente.");
    return getOperation();
  }
  return operation;
}
int getValue() {
  print("Digite o valor da operação:");
  String? valuestr = stdin.readLineSync();
  return int.parse(valuestr!);
}
void actionManager(String action) {
  int value = getValue();
  print("Operação escolhida: "+action+", Valor: "+ value.toString());
}
void main(List<String> arguments) {
  actionManager(getOperation()!);
}
