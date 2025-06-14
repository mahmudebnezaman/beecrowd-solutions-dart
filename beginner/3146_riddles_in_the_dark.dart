import 'dart:io';

void main() {
  double r = double.parse(stdin.readLineSync()!);

  print((2 * 3.14 * r).toStringAsFixed(2));
}