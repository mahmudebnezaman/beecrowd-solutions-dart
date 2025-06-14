import 'dart:io';

void main() {
  String num = stdin.readLineSync()!;

  print(num.contains('13')
      ? '$num es de Mala Suerte'
      : '$num NO es de Mala Suerte');
}