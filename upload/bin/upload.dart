import 'dart:io';
List<String> fileTypes = ["pdf", "jpg", "png","docx"];
void uploadFile() {
  print(fileTypes);
  print("informe o tipo de arquivo ha ser enviado:")
  String? type = stdin.readLineSync();
  if (!(fileTypes.contains(type))) {
      uploadFile();
      return;
  }
  print("arquivo enviado com sucesso!")
}
void main(List<String> arguments) {
  uploadFile(); 
}
