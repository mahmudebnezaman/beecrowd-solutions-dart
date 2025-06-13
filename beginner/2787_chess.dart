import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  print(((a % 2 == 0 && b % 2 == 0) || (a % 2 != 0 && b % 2 != 0)) ? '1' : '0');
}