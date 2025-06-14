import 'dart:io';

void main() {
  String qoute = 'LIFE IS NOT A PROBLEM TO BE SOLVED';
  int count = int.parse(stdin.readLineSync()!);

  print(qoute.substring(0, count));
}