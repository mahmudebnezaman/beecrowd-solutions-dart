import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int cells = n * n;
  int a = (cells / 2).ceil().toInt();
  int b = cells - a;
  print('$a casas brancas e $b casas pretas');
}