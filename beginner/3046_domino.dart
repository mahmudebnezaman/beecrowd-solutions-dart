import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  int pecas = ((n + 1) * (n + 2)) ~/ 2;

  print(pecas);
}