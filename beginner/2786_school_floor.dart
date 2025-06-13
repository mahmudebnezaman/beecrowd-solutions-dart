import 'dart:io';

void main() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  print((a * b) + ((a - 1) * (b - 1)));
  print(((a - 1) * 2) + ((b - 1) * 2));
}