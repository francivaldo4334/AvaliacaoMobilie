import 'dart:io';
List<String> paymentMethods = ["cartao", "boleto", "paypal","pix"];
String getPaymentMethod() {
  print(paymentMethods);
  print("Insira o metodo de pagamento: ");
  String? paymentMethod = stdin.readLineSync();
  if (!paymentMethods.contains(paymentMethod)) {
    return getPaymentMethod();
  }
  return paymentMethod!;
}
void main(List<String> arguments) {
  String paymentMethod = getPaymentMethod();
  print("Metodo de pagamento escolhido foi: "+paymentMethod);
}
