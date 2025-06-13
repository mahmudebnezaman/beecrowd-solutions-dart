import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);

  String a = '';

  for (int i = 0; i < n; i++) {
    a = '${a}a';
  }

  print('Feliz nat${a}l!');
}