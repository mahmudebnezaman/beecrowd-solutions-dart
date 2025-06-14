import 'dart:io';

void main() {
  for (int i = int.parse(stdin.readLineSync()!); i > 0; i--) {
    int n = int.parse(stdin.readLineSync()!);
    if (n >= 8001) {
      print('Mais de 8000!');
    } else {
      print('Inseto!');
    }
  }
}